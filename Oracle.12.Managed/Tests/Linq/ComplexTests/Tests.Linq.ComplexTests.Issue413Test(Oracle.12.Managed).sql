﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @InstrumentId Int32
SET     @InstrumentId = 1
DECLARE @IndexId Int32
SET     @IndexId = 1

INSERT INTO T3
(
	"InstrumentId",
	"IndexId"
)
VALUES
(
	:InstrumentId,
	:IndexId
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @InstrumentId Int32
SET     @InstrumentId = 2
DECLARE @IndexId Int32
SET     @IndexId = 1

INSERT INTO T3
(
	"InstrumentId",
	"IndexId"
)
VALUES
(
	:InstrumentId,
	:IndexId
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @InstrumentId Int32
SET     @InstrumentId = 3
DECLARE @IndexId Int32
SET     @IndexId = 1

INSERT INTO T3
(
	"InstrumentId",
	"IndexId"
)
VALUES
(
	:InstrumentId,
	:IndexId
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @InstrumentId Int32
SET     @InstrumentId = 1
DECLARE @IndexId Int32
SET     @IndexId = 1

INSERT INTO T2
(
	"InstrumentId",
	"IndexId"
)
VALUES
(
	:InstrumentId,
	:IndexId
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @InstrumentId Int32
SET     @InstrumentId = 2
DECLARE @IndexId Int32
SET     @IndexId = 1

INSERT INTO T2
(
	"InstrumentId",
	"IndexId"
)
VALUES
(
	:InstrumentId,
	:IndexId
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @InstrumentId Int32
SET     @InstrumentId = 1
DECLARE @InstrumentCode Varchar2(4) -- String
SET     @InstrumentCode = 'aaa1'
DECLARE @CreateDate TimeStamp -- DateTime
SET     @CreateDate = TIMESTAMP '2020-02-28 17:54:55.123123'
DECLARE @SourceInstrumentCode Varchar2(7) -- String
SET     @SourceInstrumentCode = 'NOTNULL'

INSERT INTO T1
(
	"InstrumentId",
	"InstrumentCode",
	"CreateDate",
	"SourceInstrumentCode"
)
VALUES
(
	:InstrumentId,
	:InstrumentCode,
	:CreateDate,
	:SourceInstrumentCode
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @InstrumentId Int32
SET     @InstrumentId = 2
DECLARE @InstrumentCode Varchar2(4) -- String
SET     @InstrumentCode = 'aaa2'
DECLARE @CreateDate TimeStamp -- DateTime
SET     @CreateDate = TIMESTAMP '2020-02-28 17:54:55.123123'
DECLARE @SourceInstrumentCode Varchar2 -- String
SET     @SourceInstrumentCode = NULL

INSERT INTO T1
(
	"InstrumentId",
	"InstrumentCode",
	"CreateDate",
	"SourceInstrumentCode"
)
VALUES
(
	:InstrumentId,
	:InstrumentCode,
	:CreateDate,
	:SourceInstrumentCode
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @cond Varchar2(4) -- String
SET     @cond = 'aaa%'
DECLARE @uptoDate TimeStamp -- DateTime
SET     @uptoDate = TIMESTAMP '2020-02-29 17:54:55.123123'

SELECT
	t5."SourceInstrumentCode"
FROM
	(
		SELECT DISTINCT
			ins."SourceInstrumentCode"
		FROM
			T1 t4
				INNER JOIN T2 idx ON t4."InstrumentId" = idx."InstrumentId"
				INNER JOIN T3 w ON idx."IndexId" = w."IndexId"
				INNER JOIN T1 ins ON w."InstrumentId" = ins."InstrumentId"
		WHERE
			t4."InstrumentCode" LIKE :cond ESCAPE '~' AND t4."CreateDate" <= :uptoDate AND
			ins."SourceInstrumentCode" IS NOT NULL
	) t5
ORDER BY
	t5."SourceInstrumentCode"

