class CreateObservations < ActiveRecord::Migration[5.0]
  def change
    create_table :observations do |t|
      t.references :user, index: true
      t.string :title
      t.string :link
      t.datetime :pub_date
      t.text :description
      t.integer :wp_post_id
      t.datetime :posted_at

      t.string :observer
      t.string :lastname
      t.string :firstname
      t.string :email
      t.string :phone
      t.string :qualification

      t.string :date
      t.string :time
      t.string :range
      t.string :mountain
      t.string :location

      t.string :elevation
      t.string :temp
      t.string :sky
      t.string :speed
      t.string :direction
      t.string :precipitation_type
      t.string :precipitation_rate
      t.string :avalanches
      t.string :avalanche_outbreak
      t.string :snowpack
      t.string :spin
      t.string :comments
      t.string :photos
      t.string :videos

      t.string :priority_1
      t.string :priority_2
      t.string :priority_3
      t.string :priority_4
      t.string :avalanche_problem_1
      t.string :avalanche_problem_2
      t.string :avalanche_problem_3
      t.string :avalanche_problem_4
      t.string :is_avalanche_observed_1
      t.string :is_avalanche_observed_2
      t.string :is_avalanche_observed_3
      t.string :is_avalanche_observed_4
      t.string :check_weak_layer_1
      t.string :check_weak_layer_2
      t.string :check_weak_layer_3
      t.string :check_weak_layer_4
      t.string :potential_size_1
      t.string :potential_size_2
      t.string :potential_size_3
      t.string :potential_size_4
      t.string :likelihood_of_triggering_1
      t.string :likelihood_of_triggering_2
      t.string :likelihood_of_triggering_3
      t.string :likelihood_of_triggering_4
      t.string :sensitivity_to_triggers_1
      t.string :sensitivity_to_triggers_2
      t.string :sensitivity_to_triggers_3
      t.string :sensitivity_to_triggers_4
      t.string :spatial_distribution_1
      t.string :spatial_distribution_2
      t.string :spatial_distribution_3
      t.string :spatial_distribution_4
      t.string :terrain_features_1
      t.string :terrain_features_2
      t.string :terrain_features_3
      t.string :terrain_features_4
      t.string :memo_1
      t.string :memo_2
      t.string :memo_3
      t.string :memo_4
      t.string :alpine_danger
      t.string :treeline_danger
      t.string :below_treeline_danger
      t.string :danger_comments
      t.string :confidence
      t.timestamps
    end
  end
end
