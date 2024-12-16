BeforeExecute
-- Firebird.2.5 Firebird


SELECT * FROM (
	SELECT
		NULL                                                    AS PackageName,
		RDB$PROCEDURE_NAME                                      AS ProcedureName,
		RDB$DESCRIPTION                                         AS Description,
		RDB$PROCEDURE_SOURCE                                    AS Source,
		CASE WHEN RDB$PROCEDURE_TYPE = 1 THEN 'TF' ELSE 'P' END AS Type
	FROM RDB$PROCEDURES
	WHERE RDB$SYSTEM_FLAG = 0 AND RDB$PROCEDURE_TYPE IS NOT NULL
	UNION ALL
	SELECT
		NULL,
		RDB$FUNCTION_NAME,
		RDB$DESCRIPTION,
		NULL,
		'F'
	FROM RDB$FUNCTIONS
	WHERE RDB$SYSTEM_FLAG = 0
) ORDER BY ProcedureName

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	NULL                                                 AS PackageName,
	p.RDB$PROCEDURE_NAME                                 AS ProcedureName,
	p.RDB$PARAMETER_NAME                                 AS ParameterName,
	p.RDB$PARAMETER_NUMBER                               AS Ordinal,
	p.RDB$PARAMETER_TYPE                                 AS Direction,
	p.RDB$DESCRIPTION                                    AS Decsription,
	f.RDB$FIELD_TYPE                                     AS Type,
	f.RDB$FIELD_SUB_TYPE                                 AS SubType,
	COALESCE(f.RDB$CHARACTER_LENGTH, f.RDB$FIELD_LENGTH) AS Length,
	f.RDB$FIELD_PRECISION                                AS "precision",
	f.RDB$FIELD_SCALE                                    AS Scale,
	COALESCE(f.RDB$NULL_FLAG, p.RDB$NULL_FLAG)           AS IsNullable
FROM RDB$PROCEDURE_PARAMETERS p
	INNER JOIN RDB$PROCEDURES pr ON p.RDB$PROCEDURE_NAME = pr.RDB$PROCEDURE_NAME
	LEFT JOIN RDB$FIELDS f ON p.RDB$FIELD_SOURCE = f.RDB$FIELD_NAME
WHERE p.RDB$SYSTEM_FLAG = 0 AND (pr.RDB$PROCEDURE_TYPE <> 1 OR p.RDB$PARAMETER_TYPE <> 1)
UNION ALL
SELECT
	NULL,
	p.RDB$FUNCTION_NAME,
	NULL,
	p.RDB$ARGUMENT_POSITION,
	CASE WHEN fn.RDB$RETURN_ARGUMENT = p.RDB$ARGUMENT_POSITION THEN 2 ELSE 0 END,
	NULL,
	p.RDB$FIELD_TYPE,
	p.RDB$FIELD_TYPE,
	COALESCE(p.RDB$CHARACTER_LENGTH, p.RDB$FIELD_LENGTH),
	p.RDB$FIELD_PRECISION,
	p.RDB$FIELD_SCALE,
	NULL
FROM RDB$FUNCTION_ARGUMENTS p
		INNER JOIN RDB$FUNCTIONS fn ON p.RDB$FUNCTION_NAME = fn.RDB$FUNCTION_NAME

BeforeExecute
BeginTransaction
BeforeExecute
-- Firebird.2.5 Firebird

"AddIssue792Record"

BeforeExecute
-- Firebird.2.5 Firebird

SELECT * FROM "OutRefEnumTest"(NULL,NULL)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT * FROM "OutRefTest"(NULL,NULL,NULL,NULL)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT * FROM "Patient_SelectAll"

BeforeExecute
-- Firebird.2.5 Firebird

SELECT * FROM "Patient_SelectByName"(NULL,NULL)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 0

"Person_Delete"

BeforeExecute
-- Firebird.2.5 Firebird

SELECT * FROM "Person_Insert"(NULL,NULL,NULL,NULL)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT * FROM "Person_Insert_OutputParameter"(NULL,NULL,NULL,NULL)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT * FROM "Person_SelectAll"

BeforeExecute
-- Firebird.2.5 Firebird

SELECT * FROM "Person_SelectByKey"(NULL)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT * FROM "Person_SelectByName"(NULL,NULL)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @PERSONID Integer(4) -- Int32
SET     @PERSONID = 0
DECLARE @FIRSTNAME VarChar(50) -- String
SET     @FIRSTNAME = ''
DECLARE @LASTNAME VarChar(50) -- String
SET     @LASTNAME = ''
DECLARE @MIDDLENAME VarChar(50) -- String
SET     @MIDDLENAME = ''
DECLARE @GENDER Char(1) -- String
SET     @GENDER = _utf8 x'00'

"Person_Update"

BeforeExecute
-- Firebird.2.5 Firebird

SELECT * FROM "Scalar_DataReader"

BeforeExecute
-- Firebird.2.5 Firebird

SELECT * FROM "Scalar_OutputParameter"

BeforeExecute
-- Firebird.2.5 Firebird

SELECT * FROM "Scalar_ReturnParameter"

BeforeExecute
RollbackTransaction
BeforeExecute
-- Firebird.2.5 Firebird


SELECT * FROM (
	SELECT
		NULL                                                    AS PackageName,
		RDB$PROCEDURE_NAME                                      AS ProcedureName,
		RDB$DESCRIPTION                                         AS Description,
		RDB$PROCEDURE_SOURCE                                    AS Source,
		CASE WHEN RDB$PROCEDURE_TYPE = 1 THEN 'TF' ELSE 'P' END AS Type
	FROM RDB$PROCEDURES
	WHERE RDB$SYSTEM_FLAG = 0 AND RDB$PROCEDURE_TYPE IS NOT NULL
	UNION ALL
	SELECT
		NULL,
		RDB$FUNCTION_NAME,
		RDB$DESCRIPTION,
		NULL,
		'F'
	FROM RDB$FUNCTIONS
	WHERE RDB$SYSTEM_FLAG = 0
) ORDER BY ProcedureName

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	NULL                                                 AS PackageName,
	p.RDB$PROCEDURE_NAME                                 AS ProcedureName,
	p.RDB$PARAMETER_NAME                                 AS ParameterName,
	p.RDB$PARAMETER_NUMBER                               AS Ordinal,
	p.RDB$PARAMETER_TYPE                                 AS Direction,
	p.RDB$DESCRIPTION                                    AS Decsription,
	f.RDB$FIELD_TYPE                                     AS Type,
	f.RDB$FIELD_SUB_TYPE                                 AS SubType,
	COALESCE(f.RDB$CHARACTER_LENGTH, f.RDB$FIELD_LENGTH) AS Length,
	f.RDB$FIELD_PRECISION                                AS "precision",
	f.RDB$FIELD_SCALE                                    AS Scale,
	COALESCE(f.RDB$NULL_FLAG, p.RDB$NULL_FLAG)           AS IsNullable
FROM RDB$PROCEDURE_PARAMETERS p
	INNER JOIN RDB$PROCEDURES pr ON p.RDB$PROCEDURE_NAME = pr.RDB$PROCEDURE_NAME
	LEFT JOIN RDB$FIELDS f ON p.RDB$FIELD_SOURCE = f.RDB$FIELD_NAME
WHERE p.RDB$SYSTEM_FLAG = 0 AND (pr.RDB$PROCEDURE_TYPE <> 1 OR p.RDB$PARAMETER_TYPE <> 1)
UNION ALL
SELECT
	NULL,
	p.RDB$FUNCTION_NAME,
	NULL,
	p.RDB$ARGUMENT_POSITION,
	CASE WHEN fn.RDB$RETURN_ARGUMENT = p.RDB$ARGUMENT_POSITION THEN 2 ELSE 0 END,
	NULL,
	p.RDB$FIELD_TYPE,
	p.RDB$FIELD_TYPE,
	COALESCE(p.RDB$CHARACTER_LENGTH, p.RDB$FIELD_LENGTH),
	p.RDB$FIELD_PRECISION,
	p.RDB$FIELD_SCALE,
	NULL
FROM RDB$FUNCTION_ARGUMENTS p
		INNER JOIN RDB$FUNCTIONS fn ON p.RDB$FUNCTION_NAME = fn.RDB$FUNCTION_NAME

BeforeExecute
BeginTransaction
BeforeExecute
RollbackTransaction
BeforeExecute
-- Firebird.2.5 Firebird


SELECT * FROM (
	SELECT
		NULL                                                    AS PackageName,
		RDB$PROCEDURE_NAME                                      AS ProcedureName,
		RDB$DESCRIPTION                                         AS Description,
		RDB$PROCEDURE_SOURCE                                    AS Source,
		CASE WHEN RDB$PROCEDURE_TYPE = 1 THEN 'TF' ELSE 'P' END AS Type
	FROM RDB$PROCEDURES
	WHERE RDB$SYSTEM_FLAG = 0 AND RDB$PROCEDURE_TYPE IS NOT NULL
	UNION ALL
	SELECT
		NULL,
		RDB$FUNCTION_NAME,
		RDB$DESCRIPTION,
		NULL,
		'F'
	FROM RDB$FUNCTIONS
	WHERE RDB$SYSTEM_FLAG = 0
) ORDER BY ProcedureName

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	NULL                                                 AS PackageName,
	p.RDB$PROCEDURE_NAME                                 AS ProcedureName,
	p.RDB$PARAMETER_NAME                                 AS ParameterName,
	p.RDB$PARAMETER_NUMBER                               AS Ordinal,
	p.RDB$PARAMETER_TYPE                                 AS Direction,
	p.RDB$DESCRIPTION                                    AS Decsription,
	f.RDB$FIELD_TYPE                                     AS Type,
	f.RDB$FIELD_SUB_TYPE                                 AS SubType,
	COALESCE(f.RDB$CHARACTER_LENGTH, f.RDB$FIELD_LENGTH) AS Length,
	f.RDB$FIELD_PRECISION                                AS "precision",
	f.RDB$FIELD_SCALE                                    AS Scale,
	COALESCE(f.RDB$NULL_FLAG, p.RDB$NULL_FLAG)           AS IsNullable
FROM RDB$PROCEDURE_PARAMETERS p
	INNER JOIN RDB$PROCEDURES pr ON p.RDB$PROCEDURE_NAME = pr.RDB$PROCEDURE_NAME
	LEFT JOIN RDB$FIELDS f ON p.RDB$FIELD_SOURCE = f.RDB$FIELD_NAME
WHERE p.RDB$SYSTEM_FLAG = 0 AND (pr.RDB$PROCEDURE_TYPE <> 1 OR p.RDB$PARAMETER_TYPE <> 1)
UNION ALL
SELECT
	NULL,
	p.RDB$FUNCTION_NAME,
	NULL,
	p.RDB$ARGUMENT_POSITION,
	CASE WHEN fn.RDB$RETURN_ARGUMENT = p.RDB$ARGUMENT_POSITION THEN 2 ELSE 0 END,
	NULL,
	p.RDB$FIELD_TYPE,
	p.RDB$FIELD_TYPE,
	COALESCE(p.RDB$CHARACTER_LENGTH, p.RDB$FIELD_LENGTH),
	p.RDB$FIELD_PRECISION,
	p.RDB$FIELD_SCALE,
	NULL
FROM RDB$FUNCTION_ARGUMENTS p
		INNER JOIN RDB$FUNCTIONS fn ON p.RDB$FUNCTION_NAME = fn.RDB$FUNCTION_NAME

BeforeExecute
BeginTransaction
BeforeExecute
RollbackTransaction
