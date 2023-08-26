--! Previous: sha1:b7c354b1948c5b83af2e9d53ab730d94b39353d6
--! Hash: sha1:6738c948d96eae175f5b637dc78bf2236ed231db

-- Enter migration here
ALTER TABLE main.contacts ADD COLUMN IF NOT EXISTS firstname VARCHAR DEFAULT '';

-- boilerplate found here: https://www.codingvila.com/2021/05/rename-column-only-if-exists-in-postgresql.html
DO $$
BEGIN
    IF EXISTS(
        SELECT *
            FROM information_schema.columns
            WHERE (
                (table_schema='main') AND
                (table_name='contacts') AND
                (column_name='name')
            )
  ) THEN
      ALTER TABLE main.contacts RENAME name TO lastname;
  END IF;
END $$;
