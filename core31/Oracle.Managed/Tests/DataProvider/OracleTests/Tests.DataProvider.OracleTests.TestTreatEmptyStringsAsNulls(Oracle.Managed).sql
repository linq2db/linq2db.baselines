BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1."KeyValue",
	t1."StringValue1",
	t1."StringValue2"
FROM
	"StringTest" t1
WHERE
	t1."KeyValue" = 'NullValues'

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1."KeyValue",
	t1."StringValue1",
	t1."StringValue2"
FROM
	"StringTest" t1
WHERE
	(t1."StringValue1" IS NULL OR Length(t1."StringValue1") = 0)

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1."KeyValue",
	t1."StringValue1",
	t1."StringValue2"
FROM
	"StringTest" t1
WHERE
	(t1."StringValue2" IS NULL OR Length(t1."StringValue2") = 0)

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1."KeyValue",
	t1."StringValue1",
	t1."StringValue2"
FROM
	"StringTest" t1
WHERE
	(t1."StringValue1" = '' OR t1."StringValue1" IS NULL)

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1."KeyValue",
	t1."StringValue1",
	t1."StringValue2"
FROM
	"StringTest" t1
WHERE
	(t1."StringValue2" = '' OR t1."StringValue2" IS NULL)

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1."KeyValue",
	t1."StringValue1",
	t1."StringValue2"
FROM
	"StringTest" t1
WHERE
	t1."StringValue1" IS NULL

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1."KeyValue",
	t1."StringValue1",
	t1."StringValue2"
FROM
	"StringTest" t1
WHERE
	t1."StringValue2" IS NULL

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @emptyString Varchar2 -- String
SET     @emptyString = ''

SELECT
	t1."KeyValue",
	t1."StringValue1",
	t1."StringValue2"
FROM
	"StringTest" t1
WHERE
	(t1."StringValue1" = :emptyString OR t1."StringValue1" IS NULL)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @emptyString Varchar2 -- String
SET     @emptyString = ''

SELECT
	t1."KeyValue",
	t1."StringValue1",
	t1."StringValue2"
FROM
	"StringTest" t1
WHERE
	(t1."StringValue2" = :emptyString OR t1."StringValue2" IS NULL)

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1."KeyValue",
	t1."StringValue1",
	t1."StringValue2"
FROM
	"StringTest" t1
WHERE
	t1."StringValue1" IS NULL

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1."KeyValue",
	t1."StringValue1",
	t1."StringValue2"
FROM
	"StringTest" t1
WHERE
	t1."StringValue2" IS NULL

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @value_1 Varchar2 -- String
SET     @value_1 = ''

SELECT
	t1."KeyValue",
	t1."StringValue1",
	t1."StringValue2"
FROM
	"StringTest" t1
WHERE
	(:value_1 = t1."StringValue1" OR t1."StringValue1" IS NULL)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @value_1 Varchar2 -- String
SET     @value_1 = ''

SELECT
	t1."KeyValue",
	t1."StringValue1",
	t1."StringValue2"
FROM
	"StringTest" t1
WHERE
	(:value_1 = t1."StringValue1" OR t1."StringValue1" IS NULL)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @value_1 Varchar2 -- String
SET     @value_1 = ''

SELECT
	t1."KeyValue",
	t1."StringValue1",
	t1."StringValue2"
FROM
	"StringTest" t1
WHERE
	(:value_1 = t1."StringValue2" OR t1."StringValue2" IS NULL)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @value_1 Varchar2 -- String
SET     @value_1 = ''

SELECT
	t1."KeyValue",
	t1."StringValue1",
	t1."StringValue2"
FROM
	"StringTest" t1
WHERE
	(:value_1 = t1."StringValue2" OR t1."StringValue2" IS NULL)

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1."KeyValue",
	t1."StringValue1",
	t1."StringValue2"
FROM
	"StringTest" t1
WHERE
	t1."StringValue1" IS NULL

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1."KeyValue",
	t1."StringValue1",
	t1."StringValue2"
FROM
	"StringTest" t1
WHERE
	t1."StringValue1" IS NULL

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1."KeyValue",
	t1."StringValue1",
	t1."StringValue2"
FROM
	"StringTest" t1
WHERE
	t1."StringValue2" IS NULL

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1."KeyValue",
	t1."StringValue1",
	t1."StringValue2"
FROM
	"StringTest" t1
WHERE
	t1."StringValue2" IS NULL

