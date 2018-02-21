class CreateLibrariesBooks < ActiveRecord::Migration

  def change
    create_table :books do |t|
      t.string :title
      t.references :library
      t.references :author

      t.timestamps
    end

    create_table :authors do |t|
      t.string :first_name
      t.string :last_name

      t.timestamps
    end

    create_table :libraries do |t|
      t.string :name
      t.string :address
      t.timestamps
    end


  end

end