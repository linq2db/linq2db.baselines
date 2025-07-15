BeforeExecute
-- PostgreSQL.18 PostgreSQL

DROP TYPE IF EXISTS "item_type_enum";

BeforeExecute
-- PostgreSQL.18 PostgreSQL

CREATE TYPE "item_type_enum" AS ENUM (
  'type1',
  'type2',
  'type3'
)

BeforeExecute
-- PostgreSQL.18 PostgreSQL
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

BeforeExecute
-- PostgreSQL.18 PostgreSQL

insert into "Issue4487Table"("Id", "Values") values (2, '{type3,type2}')

BeforeExecute
-- PostgreSQL.18 PostgreSQL
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

BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	t1."Id",
	t1."Value",
	t1."Values"
FROM
	"Issue4487Table" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.18 PostgreSQL

DROP TYPE IF EXISTS "item_type_enum";

