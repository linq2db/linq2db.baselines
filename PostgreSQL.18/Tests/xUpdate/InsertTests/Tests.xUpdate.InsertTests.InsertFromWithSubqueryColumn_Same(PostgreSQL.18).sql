-- PostgreSQL.18 PostgreSQL
DECLARE @id1 Integer -- Int32
SET     @id1 = 1
DECLARE @id3 Integer -- Int32
SET     @id3 = 3
DECLARE @id2 Integer -- Int32
SET     @id2 = 2

INSERT INTO "InsertFromWithConstantsTable"
(
	"Id",
	"Value",
	"Value1",
	"Value2",
	"Value3",
	"Value4"
)
VALUES
(
	:id1,
	:id3,
	(
		SELECT
			r."Value4"
		FROM
			"InsertFromWithConstantsTable" r
		WHERE
			r."Id" = :id2
	),
	(
		SELECT
			r."Value4"
		FROM
			"InsertFromWithConstantsTable" r
		WHERE
			r."Id" = :id2
	),
	'string 1',
	'string 2'
)

