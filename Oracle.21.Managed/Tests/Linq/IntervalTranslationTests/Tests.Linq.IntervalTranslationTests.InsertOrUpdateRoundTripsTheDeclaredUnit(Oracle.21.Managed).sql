-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @value Int64
SET     @value = 4567
DECLARE @value_1 Int64
SET     @value_1 = 45670000000
DECLARE @value_2 Int64
SET     @value_2 = 45670000000
DECLARE @value_3 Int64
SET     @value_3 = 4567

MERGE INTO "DurationRow" t1
USING (SELECT 1 AS "Id" FROM SYS.DUAL) s ON
(
	t1."Id" = s."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"InSeconds" = :value,
		"InTicks" = :value_1
WHEN NOT MATCHED THEN
	INSERT
	(
		"Id",
		"InSeconds",
		"InTicks",
		"Undeclared",
		"UndeclaredSeconds"
	)
	VALUES
	(
		1,
		:value,
		:value_1,
		:value_2,
		:value_3
	)

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."InSeconds",
	t1."InTicks",
	t1."Undeclared",
	t1."UndeclaredSeconds"
FROM
	"DurationRow" t1
FETCH NEXT 2 ROWS ONLY

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @value Int64
SET     @value = 19260
DECLARE @value_1 Int64
SET     @value_1 = 192600000000
DECLARE @value_2 Int64
SET     @value_2 = 192600000000
DECLARE @value_3 Int64
SET     @value_3 = 19260

MERGE INTO "DurationRow" t1
USING (SELECT 1 AS "Id" FROM SYS.DUAL) s ON
(
	t1."Id" = s."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"InSeconds" = :value,
		"InTicks" = :value_1
WHEN NOT MATCHED THEN
	INSERT
	(
		"Id",
		"InSeconds",
		"InTicks",
		"Undeclared",
		"UndeclaredSeconds"
	)
	VALUES
	(
		1,
		:value,
		:value_1,
		:value_2,
		:value_3
	)

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."InSeconds",
	t1."InTicks",
	t1."Undeclared",
	t1."UndeclaredSeconds"
FROM
	"DurationRow" t1
FETCH NEXT 2 ROWS ONLY

