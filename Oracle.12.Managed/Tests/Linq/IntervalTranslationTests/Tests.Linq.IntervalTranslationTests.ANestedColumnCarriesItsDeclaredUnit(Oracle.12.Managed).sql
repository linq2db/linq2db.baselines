-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Declared_Elapsed Int64
SET     @Declared_Elapsed = 5400
DECLARE @Converted_Elapsed Int64
SET     @Converted_Elapsed = 5400

INSERT INTO "NestedDurationRow"
(
	"Id",
	"Declared",
	"Converted"
)
VALUES
(
	:Id,
	:Declared_Elapsed,
	:Converted_Elapsed
)

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."Declared",
	t1."Converted"
FROM
	"NestedDurationRow" t1
FETCH NEXT 2 ROWS ONLY

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	CAST(r."Declared" AS Float) / 60D as "c1"
FROM
	"NestedDurationRow" r
FETCH NEXT 2 ROWS ONLY

