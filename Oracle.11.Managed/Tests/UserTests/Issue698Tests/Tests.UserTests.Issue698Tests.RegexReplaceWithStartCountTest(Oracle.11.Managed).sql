-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11

SELECT
	REGEXP_REPLACE(t1."Text", 'aa', 'X', 3, 1)
FROM
	"InfeedAdvicePositionDTO" t1
WHERE
	ROWNUM <= 2

