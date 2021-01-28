<?php

namespace app\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Registration;
use app\models\Client;

/**
 * RegistrationSearch represents the model behind the search form of `app\models\Registration`.
 */
class RegistrationSearch extends Registration
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'user_id', 'analiz_id', 'sum_amount', 'sum_cash', 'sum_plastik', 'sum_debt'], 'integer'],
            [['client_id','add1', 'add2', 'other', 'create_date', 'change_time'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Registration::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
            'user_id' => $this->user_id,
            'analiz_id' => $this->analiz_id,
            'sum_amount' => $this->sum_amount,
            'sum_cash' => $this->sum_cash,
            'sum_plastik' => $this->sum_plastik,
            'sum_debt' => $this->sum_debt,
            'create_date' => $this->create_date,
            'change_time' => $this->change_time,
        ]);

        if(strlen($this->client_id)>1){
            // var_dump(Client::getArrayByFio($this->client_id));die;
            $query->andWhere(['in','client_id',Client::getArrayByFio($this->client_id)]);
        }

        $query->andFilterWhere(['like', 'add1', $this->add1])
            ->andFilterWhere(['like', 'add2', $this->add2])
            ->andFilterWhere(['like', 'other', $this->other]);

        return $dataProvider;
    }
}
