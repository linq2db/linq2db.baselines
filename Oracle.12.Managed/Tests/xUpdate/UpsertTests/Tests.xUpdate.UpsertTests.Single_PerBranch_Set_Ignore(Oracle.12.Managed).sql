-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2(5) -- String
SET     @Name = 'first'
DECLARE @Version Int32
SET     @Version = 1
DECLARE @updateTime TimeStamp -- DateTime
SET     @updateTime = TIMESTAMP '2026-01-01 12:00:00.000000'
DECLARE @insertTime TimeStamp -- DateTime
SET     @insertTime = TIMESTAMP '2026-01-01 10:00:00.000000'

MERGE INTO "UpsertTest" t1
USING (SELECT :Id AS "Id" FROM SYS.DUAL) s ON
(
	t1."Id" = s."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Name" = :Name,
		"Version" = :Version,
		"UpdatedAt" = :updateTime,
		"UpdatedBy" = 'system'
WHEN NOT MATCHED THEN
	INSERT
	(
		"Id",
		"Name",
		"Version",
		"CreatedAt",
		"CreatedBy"
	)
	VALUES
	(
		:Id,
		:Name,
		:Version,
		:insertTime,
		'system'
	)

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Name",
	r."Version" as "Version_1",
	r."CreatedAt",
	r."CreatedBy",
	r."UpdatedAt",
	r."UpdatedBy"
FROM
	"UpsertTest" r
WHERE
	r."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2(6) -- String
SET     @Name = 'second'
DECLARE @Version Int32
SET     @Version = 2
DECLARE @updateTime TimeStamp -- DateTime
SET     @updateTime = TIMESTAMP '2026-01-01 12:00:00.000000'
DECLARE @insertTime TimeStamp -- DateTime
SET     @insertTime = TIMESTAMP '2026-01-01 10:00:00.000000'

MERGE INTO "UpsertTest" t1
USING (SELECT :Id AS "Id" FROM SYS.DUAL) s ON
(
	t1."Id" = s."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Name" = :Name,
		"Version" = :Version,
		"UpdatedAt" = :updateTime,
		"UpdatedBy" = 'system'
WHEN NOT MATCHED THEN
	INSERT
	(
		"Id",
		"Name",
		"Version",
		"CreatedAt",
		"CreatedBy"
	)
	VALUES
	(
		:Id,
		:Name,
		:Version,
		:insertTime,
		'system'
	)

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Name",
	r."Version" as "Version_1",
	r."CreatedAt",
	r."CreatedBy",
	r."UpdatedAt",
	r."UpdatedBy"
FROM
	"UpsertTest" r
WHERE
	r."Id" = 1
FETCH NEXT 2 ROWS ONLY

