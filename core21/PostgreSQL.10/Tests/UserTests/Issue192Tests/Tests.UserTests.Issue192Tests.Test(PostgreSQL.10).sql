BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "TypeConvertTable"
(
	"Name"      text        NOT NULL,
	"BoolValue" Char        NOT NULL,
	"GuidValue" VarChar(50)     NULL
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE "TypeConvertTable"

