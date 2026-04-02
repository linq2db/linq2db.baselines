-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Text Varchar2(10) -- String
SET     @Text = 'aa11aa22aa'

INSERT INTO "InfeedAdvicePositionDTO"
(
	"Id",
	"Text"
)
VALUES
(
	:Id,
	:Text
)

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	REGEXP_REPLACE(t1."Text", 'aa', 'X', 3, 1) as "c1"
FROM
	"InfeedAdvicePositionDTO" t1
FETCH NEXT 2 ROWS ONLY

