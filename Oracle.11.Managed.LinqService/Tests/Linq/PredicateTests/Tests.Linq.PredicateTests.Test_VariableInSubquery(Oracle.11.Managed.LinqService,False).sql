BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @One Int32
SET     @One = 1

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	:One IN (
		SELECT
			s."Value1"
		FROM
			"BooleanTable" s
		WHERE
			s."Id" > r."Id"
	)

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @Zero Int32
SET     @Zero = 0

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	:Zero IN (
		SELECT
			s."Value1"
		FROM
			"BooleanTable" s
		WHERE
			s."Id" > r."Id"
	)

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @OneN Int32
SET     @OneN = 1

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	:OneN IN (
		SELECT
			s."Value1"
		FROM
			"BooleanTable" s
		WHERE
			s."Id" > r."Id"
	)

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @ZeroN Int32
SET     @ZeroN = 0

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	:ZeroN IN (
		SELECT
			s."Value1"
		FROM
			"BooleanTable" s
		WHERE
			s."Id" > r."Id"
	)

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @Null_1 Int32
SET     @Null_1 = NULL

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	:Null_1 IN (
		SELECT
			s."Value1"
		FROM
			"BooleanTable" s
		WHERE
			s."Id" > r."Id"
	)

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @One Int32
SET     @One = 1

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	:One NOT IN (
		SELECT
			s."Value1"
		FROM
			"BooleanTable" s
		WHERE
			s."Id" > r."Id"
	)

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @Zero Int32
SET     @Zero = 0

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	:Zero NOT IN (
		SELECT
			s."Value1"
		FROM
			"BooleanTable" s
		WHERE
			s."Id" > r."Id"
	)

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @OneN Int32
SET     @OneN = 1

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	:OneN NOT IN (
		SELECT
			s."Value1"
		FROM
			"BooleanTable" s
		WHERE
			s."Id" > r."Id"
	)

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @ZeroN Int32
SET     @ZeroN = 0

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	:ZeroN NOT IN (
		SELECT
			s."Value1"
		FROM
			"BooleanTable" s
		WHERE
			s."Id" > r."Id"
	)

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

