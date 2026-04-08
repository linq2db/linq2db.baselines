-- PostgreSQL.15 PostgreSQL
DECLARE @id1 Integer -- Int32
SET     @id1 = 1

UPDATE
	"InsertFromWithConstantsTable"
SET
	"Value1" = r."Value3",
	"Value2" = r."Value3",
	"Value3" = 'string 1',
	"Value4" = 'string 1'
FROM
	"InsertFromWithConstantsTable" r_1
		LEFT JOIN "InsertFromWithConstantsTable" r ON r."Id" = :id1
WHERE
	"InsertFromWithConstantsTable"."Id" = r_1."Id"

