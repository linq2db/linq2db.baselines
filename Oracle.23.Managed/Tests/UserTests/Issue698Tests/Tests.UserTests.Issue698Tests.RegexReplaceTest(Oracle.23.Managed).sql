-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Text Varchar2(6) -- String
SET     @Text = 'ab12cd'

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

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Text Varchar2(10) -- String
SET     @Text = 'AA11bb22cc'

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

-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	REGEXP_REPLACE(t1."Text", '[0-9]+', '')
FROM
	"InfeedAdvicePositionDTO" t1
ORDER BY
	t1."Id"

