BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

DELETE FROM
	"AllTypes" t
WHERE
	t.ID > 2

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t."longDataType"
FROM
	"AllTypes" t

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @str Long(10000) -- String
SET     @str = 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA'
-- value above truncated for logging
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "AllTypes"
(
	"longDataType"
)
VALUES
(
	:str
)
RETURNING 
	ID INTO :IDENTITY_PARAMETER

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @id Decimal(1, 0)
SET     @id = 3

SELECT
	t."longDataType"
FROM
	"AllTypes" t
WHERE
	t.ID = :id

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @str2 Varchar2(4000) -- String
SET     @str2 = 'BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB'
-- value above truncated for logging
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "AllTypes"
(
	"longDataType"
)
VALUES
(
	:str2
)
RETURNING 
	ID INTO :IDENTITY_PARAMETER

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @id2 Decimal(1, 0)
SET     @id2 = 4

SELECT
	t."longDataType"
FROM
	"AllTypes" t
WHERE
	t.ID = :id2

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

DELETE FROM
	"AllTypes" t
WHERE
	t.ID > 2

