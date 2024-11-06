BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

create type bar_enum as enum ('item_one', 'item_two');

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue4780Table"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4780Table"
(
	"Id"  SERIAL  NOT NULL,
	"Bar" Enum        NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue4780Table"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4780Table"
(
	"Id"  SERIAL  NOT NULL,
	"Bar" Enum        NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TYPE IF EXISTS bar_enum;

