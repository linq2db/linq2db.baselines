-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @id1 Int32
SET     @id1 = 1
DECLARE @id3 Int32
SET     @id3 = 3
DECLARE @id2 Int32
SET     @id2 = 2
DECLARE @id4 Int32
SET     @id4 = 4

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
			r_1."Value3"
		FROM
			"InsertFromWithConstantsTable" r_1
		WHERE
			r_1."Id" = :id4 AND ROWNUM <= 1
	),
	'string 1',
	'string 2'
)

