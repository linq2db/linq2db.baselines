-- PostgreSQL.15 PostgreSQL13

DROP TYPE IF EXISTS "item_type_enum";

-- PostgreSQL.15 PostgreSQL13

CREATE TYPE "item_type_enum" AS ENUM (
  'type1',
  'type2',
  'type3'
)

-- PostgreSQL.15 PostgreSQL13
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value Enum -- Object
SET     @Value = 'type1'

INSERT INTO "Issue4487Table"
(
	"Id",
	"Value"
)
VALUES
(
	:Id,
	:Value
)

-- PostgreSQL.15 PostgreSQL13

insert into "Issue4487Table"("Id", "Values") values (2, '{type3,type2}')

-- PostgreSQL.15 PostgreSQL13
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Values Unknown -- Object
SET     @Values = {'type1','type2'}

INSERT INTO "Issue4487Table"
(
	"Id",
	"Values"
)
VALUES
(
	:Id,
	:Values
)

-- PostgreSQL.15 PostgreSQL13

SELECT
	t1."Id",
	t1."Value",
	t1."Values"
FROM
	"Issue4487Table" t1
ORDER BY
	t1."Id"

-- PostgreSQL.15 PostgreSQL13

DROP TYPE IF EXISTS "item_type_enum";

