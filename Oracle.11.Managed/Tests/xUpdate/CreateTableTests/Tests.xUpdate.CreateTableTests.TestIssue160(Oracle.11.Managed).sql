-- Oracle.11.Managed Oracle11

CREATE TABLE "aa"
(
	"bb" Int          NOT NULL,
	"cc" VarChar(255)     NULL,

	CONSTRAINT "PK_aa" PRIMARY KEY ("bb")
)

-- Oracle.11.Managed Oracle11
DECLARE @bb Int32
SET     @bb = 99
DECLARE @cc Varchar2(5) -- String
SET     @cc = 'hallo'

INSERT INTO "aa"
(
	"bb",
	"cc"
)
VALUES
(
	:bb,
	:cc
)

-- Oracle.11.Managed Oracle11

SELECT
	t1."bb",
	t1."cc"
FROM
	"aa" t1

-- Oracle.11.Managed Oracle11

DROP TABLE "aa"

