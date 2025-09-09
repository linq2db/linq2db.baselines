BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

CREATE TABLE "aa"
(
	"bb" Int          NOT NULL,
	"cc" VarChar(255)     NULL,

	CONSTRAINT "PK_aa" PRIMARY KEY ("bb")
)

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
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

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	t1."bb",
	t1."cc"
FROM
	"aa" t1

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

DROP TABLE "aa"

