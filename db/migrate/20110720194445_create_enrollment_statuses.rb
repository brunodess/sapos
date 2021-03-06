# Copyright (c) Universidade Federal Fluminense (UFF).
# This file is part of SAPOS. Please, consult the license terms in the LICENSE file.

class CreateEnrollmentStatuses < ActiveRecord::Migration
  def self.up
    create_table :enrollment_statuses do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :enrollment_statuses
  end
end
