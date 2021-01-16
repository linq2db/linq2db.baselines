BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @date1 Date
SET     @date1 = 2020-02-29

INSERT INTO "AllTypes"
(
	"dateDataType"
)
VALUES
(
	:date1
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @date2 Timestamp -- DateTime
SET     @date2 = '2020-03-05'::date

INSERT INTO "AllTypes"
(
	"dateDataType"
)
VALUES
(
	:date2
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 2

DELETE FROM
	"AllTypes" t1
WHERE
	t1."ID" > :maxId

