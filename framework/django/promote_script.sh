#!/bin/bash

# Wait for the PostgreSQL server to become ready
until pg_isready -h $1 -p $2 -q -U $3; do
  echo "Waiting for the PostgreSQL server to become ready..."
  sleep 2
done

# Promote the standby to the new master
pg_ctl promote -D $4

# Optionally, add any additional steps needed after promotion
# For example, update configuration files, restart applications, etc.

echo "Promotion completed successfully."
