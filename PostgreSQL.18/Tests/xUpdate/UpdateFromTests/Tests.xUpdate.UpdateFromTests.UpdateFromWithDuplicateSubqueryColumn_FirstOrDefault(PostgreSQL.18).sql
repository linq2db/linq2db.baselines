-- PostgreSQL.18 PostgreSQL
DECLARE @id1 Integer -- Int32
SET     @id1 = 1

UPDATE
	"InsertFromWithConstantsTable"
SET
	"Value1" = t1."Value1",
	"Value2" = t1."Value1",
	"Value3" = 'string 1',
	"Value4" = 'string 1'
FROM
	"InsertFromWithConstantsTable" r_1
		LEFT JOIN (
			SELECT
				r."Value3" as "Value1"
			FROM
				"InsertFromWithConstantsTable" r
			WHERE
				r."Id" = :id1
			LIMIT 1
		) t1 ON 1=1
WHERE
	"InsertFromWithConstantsTable"."Id" = r_1."Id"

