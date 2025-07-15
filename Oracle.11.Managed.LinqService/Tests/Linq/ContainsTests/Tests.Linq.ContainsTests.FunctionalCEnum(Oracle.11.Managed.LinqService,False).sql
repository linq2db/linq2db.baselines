BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @In_1 Varchar2(12) -- String
SET     @In_1 = '___Value3___'
DECLARE @In_2 Varchar2(12) -- String
SET     @In_2 = '___Value4___'

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."CEnum" IN (:In_1, :In_2) AND ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @In_1 Varchar2(12) -- String
SET     @In_1 = '___Value3___'
DECLARE @In_2 Varchar2 -- String
SET     @In_2 = NULL

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."CEnum" IN (:In_1, :In_2) AND ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @In_1 Varchar2(12) -- String
SET     @In_1 = '___Value3___'
DECLARE @In_2 Varchar2(12) -- String
SET     @In_2 = '___Value2___'

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."CEnum" IN (:In_1, :In_2) AND ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @NotIn Varchar2 -- String
SET     @NotIn = NULL
DECLARE @NotIn_1 Varchar2(12) -- String
SET     @NotIn_1 = '___Value2___'

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."CEnum" NOT IN (:NotIn, :NotIn_1) AND ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @NotIn Varchar2(12) -- String
SET     @NotIn = '___Value3___'
DECLARE @NotIn_1 Varchar2(12) -- String
SET     @NotIn_1 = '___Value2___'

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."CEnum" NOT IN (:NotIn, :NotIn_1) AND ROWNUM <= 1

