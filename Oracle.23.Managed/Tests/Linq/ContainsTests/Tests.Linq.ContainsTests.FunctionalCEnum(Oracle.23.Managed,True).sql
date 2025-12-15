-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @In_1 Varchar2(12) -- String
SET     @In_1 = '___Value3___'
DECLARE @In_2 Varchar2(12) -- String
SET     @In_2 = '___Value4___'

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."CEnum" IN (:In_1, :In_2)
FETCH NEXT 1 ROWS ONLY

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @In_1 Varchar2(12) -- String
SET     @In_1 = '___Value3___'

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	(s."CEnum" IN (:In_1) OR s."CEnum" IS NULL)
FETCH NEXT 1 ROWS ONLY

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @In_1 Varchar2(12) -- String
SET     @In_1 = '___Value3___'
DECLARE @In_2 Varchar2(12) -- String
SET     @In_2 = '___Value2___'

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."CEnum" IN (:In_1, :In_2)
FETCH NEXT 1 ROWS ONLY

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @NotIn Varchar2(12) -- String
SET     @NotIn = '___Value2___'

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	(s."CEnum" NOT IN (:NotIn) AND s."CEnum" IS NOT NULL)
FETCH NEXT 1 ROWS ONLY

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @NotIn Varchar2(12) -- String
SET     @NotIn = '___Value3___'
DECLARE @NotIn_1 Varchar2(12) -- String
SET     @NotIn_1 = '___Value2___'

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	(s."CEnum" NOT IN (:NotIn, :NotIn_1) OR s."CEnum" IS NULL)
FETCH NEXT 1 ROWS ONLY

