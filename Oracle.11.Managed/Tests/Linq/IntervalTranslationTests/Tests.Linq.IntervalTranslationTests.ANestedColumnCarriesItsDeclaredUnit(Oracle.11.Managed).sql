-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11
SELECT
	t1."Id",
	t1."Declared",
	t1."Converted"
FROM
	"NestedDurationRow" t1
WHERE
	ROWNUM <= 2

-- Oracle.11.Managed Oracle11
SELECT
	CAST(r."Declared" AS Float) / 60D
FROM
	"NestedDurationRow" r
WHERE
	ROWNUM <= 2

