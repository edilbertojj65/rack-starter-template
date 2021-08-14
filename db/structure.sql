CREATE TABLE IF NOT EXISTS "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
CREATE TABLE IF NOT EXISTS "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE sqlite_sequence(name,seq);
CREATE TABLE IF NOT EXISTS "users" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "lcd" integer, "name" varchar, "last_name" varchar, "birth_of_date" varchar, "clinic_site" varchar, "viruses_name" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE IF NOT EXISTS "cards" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "vaccine_name" varchar, "dose" integer, "date_vaccine" varchar, "lot_number" varchar, "users_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, CONSTRAINT "fk_rails_192f4a3491"
FOREIGN KEY ("users_id")
  REFERENCES "users" ("id")
);
CREATE INDEX "index_cards_on_users_id" ON "cards" ("users_id");
INSERT INTO "schema_migrations" (version) VALUES
('20210811180331'),
('20210811182727');


