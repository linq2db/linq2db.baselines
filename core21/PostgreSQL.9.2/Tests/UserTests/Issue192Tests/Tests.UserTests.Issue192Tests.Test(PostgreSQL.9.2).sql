BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE "TypeConvertTable"
(
	"Name"      text        NOT NULL,
	"BoolValue" Char        NOT NULL,
	"GuidValue" VarChar(50)     NULL
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @Name Text(11) -- String
SET     @Name = 'NotVerified'
DECLARE @BoolValue Text -- AnsiStringFixedLength
SET     @BoolValue = 'N'
DECLARE @GuidValue Text(36) -- AnsiString
SET     @GuidValue = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

INSERT INTO "TypeConvertTable"
(
	"Name",
	"BoolValue",
	"GuidValue"
)
VALUES
(
	:Name,
	:BoolValue,
	:GuidValue
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @Name Text(8) -- String
SET     @Name = 'Verified'
DECLARE @BoolValue Text -- AnsiStringFixedLength
SET     @BoolValue = 'Y'
DECLARE @GuidValue Text(36) -- AnsiString
SET     @GuidValue = 'a948600d-de21-4f74-8ac2-9516b287076e'

INSERT INTO "TypeConvertTable"
(
	"Name",
	"BoolValue",
	"GuidValue"
)
VALUES
(
	:Name,
	:BoolValue,
	:GuidValue
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	Count(*)
FROM
	"TypeConvertTable" t1
WHERE
	t1."BoolValue" = 'N'

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	Count(*)
FROM
	"TypeConvertTable" t1
WHERE
	t1."BoolValue" = 'Y'

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @GuidValue Text(36) -- AnsiString
SET     @GuidValue = 'a948600d-de21-4f74-8ac2-9516b287076e'

SELECT
	Count(*)
FROM
	"TypeConvertTable" t1
WHERE
	t1."GuidValue" = :GuidValue

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @BoolValue_1 Text -- AnsiStringFixedLength
SET     @BoolValue_1 = 'N'
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	t1."Name",
	t1."BoolValue",
	t1."GuidValue"
FROM
	"TypeConvertTable" t1
WHERE
	t1."BoolValue" = :BoolValue_1
LIMIT :take

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @BoolValue Text -- AnsiStringFixedLength
SET     @BoolValue = 'Y'
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	t1."Name",
	t1."BoolValue",
	t1."GuidValue"
FROM
	"TypeConvertTable" t1
WHERE
	t1."BoolValue" = :BoolValue
LIMIT :take

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @BoolValue_1 Text -- AnsiStringFixedLength
SET     @BoolValue_1 = 'N'
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	t1."Name",
	t1."BoolValue",
	t1."GuidValue"
FROM
	"TypeConvertTable" t1
WHERE
	t1."BoolValue" = :BoolValue_1
LIMIT :take

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @BoolValue Text -- AnsiStringFixedLength
SET     @BoolValue = 'Y'
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	t1."Name",
	t1."BoolValue",
	t1."GuidValue"
FROM
	"TypeConvertTable" t1
WHERE
	t1."BoolValue" = :BoolValue
LIMIT :take

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @BoolValue_1 Text -- AnsiStringFixedLength
SET     @BoolValue_1 = 'N'
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	t1."Name",
	t1."BoolValue",
	t1."GuidValue"
FROM
	"TypeConvertTable" t1
WHERE
	t1."BoolValue" = :BoolValue_1
LIMIT :take

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @BoolValue Text -- AnsiStringFixedLength
SET     @BoolValue = 'Y'
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	t1."Name",
	t1."BoolValue",
	t1."GuidValue"
FROM
	"TypeConvertTable" t1
WHERE
	t1."BoolValue" = :BoolValue
LIMIT :take

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @BoolValue_1 Text -- AnsiStringFixedLength
SET     @BoolValue_1 = 'N'
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	t1."Name",
	t1."BoolValue",
	t1."GuidValue"
FROM
	"TypeConvertTable" t1
WHERE
	t1."BoolValue" = :BoolValue_1
LIMIT :take

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @BoolValue Text -- AnsiStringFixedLength
SET     @BoolValue = 'Y'
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	t1."Name",
	t1."BoolValue",
	t1."GuidValue"
FROM
	"TypeConvertTable" t1
WHERE
	t1."BoolValue" = :BoolValue
LIMIT :take

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @BoolValue_1 Text -- AnsiStringFixedLength
SET     @BoolValue_1 = 'N'
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	t1."Name",
	t1."BoolValue",
	t1."GuidValue"
FROM
	"TypeConvertTable" t1
WHERE
	t1."BoolValue" = :BoolValue_1
LIMIT :take

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @BoolValue Text -- AnsiStringFixedLength
SET     @BoolValue = 'Y'
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	t1."Name",
	t1."BoolValue",
	t1."GuidValue"
FROM
	"TypeConvertTable" t1
WHERE
	t1."BoolValue" = :BoolValue
LIMIT :take

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @GuidValue Text(36) -- AnsiString
SET     @GuidValue = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	t1."Name",
	t1."BoolValue",
	t1."GuidValue"
FROM
	"TypeConvertTable" t1
WHERE
	t1."GuidValue" = :GuidValue
LIMIT :take

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @GuidValue Text(36) -- AnsiString
SET     @GuidValue = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	t1."Name",
	t1."BoolValue",
	t1."GuidValue"
FROM
	"TypeConvertTable" t1
WHERE
	t1."GuidValue" = :GuidValue
LIMIT :take

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE "TypeConvertTable"

