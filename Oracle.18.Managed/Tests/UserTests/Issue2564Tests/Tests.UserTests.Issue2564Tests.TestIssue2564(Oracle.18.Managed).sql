-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue2564Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

-- Oracle.18.Managed Oracle.Managed Oracle12

CREATE TABLE "Issue2564Table"
(
	"Id"                     Number(19)   NOT NULL,
	"TimestampGenerated"     timestamp    NOT NULL,
	"TimestampGone"          timestamp        NULL,
	"MessageClassName"       VarChar(255)     NULL,
	"ExternID1"              VarChar(255)     NULL,
	"TranslatedMessageGroup" VarChar(255)     NULL,
	"TranslatedMessage1"     VarChar(255)     NULL,

	CONSTRAINT "PK_Issue2564Table" PRIMARY KEY ("Id")
)

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @from_1 TimeStamp -- DateTime
SET     @from_1 = TIMESTAMP '2020-02-28 17:54:55.123123'
DECLARE @to_1 TimeStamp -- DateTime
SET     @to_1 = TIMESTAMP '2020-02-29 17:54:55.123123'

SELECT
	Trim(MIN(tgGroup_1."TranslatedMessage1")),
	tgGroup_1."TranslatedMessageGroup",
	tgGroup_1."Hour_1",
	COUNT(*),
	SUM(1000 * (EXTRACT(SECOND FROM CAST (tgGroup_1."cond" as TIMESTAMP) - CAST (tgGroup_1."TimestampGenerated" as TIMESTAMP)) + 60 * (EXTRACT(MINUTE FROM CAST (tgGroup_1."cond" as TIMESTAMP) - CAST (tgGroup_1."TimestampGenerated" as TIMESTAMP)) + 60 * (EXTRACT(HOUR FROM CAST (tgGroup_1."cond" as TIMESTAMP) - CAST (tgGroup_1."TimestampGenerated" as TIMESTAMP)) + 24 * EXTRACT(DAY FROM CAST (tgGroup_1."cond" as TIMESTAMP) - CAST (tgGroup_1."TimestampGenerated" as TIMESTAMP))))))
FROM
	(
		SELECT
			tgGroup."ExternID1",
			tgGroup."TranslatedMessageGroup",
			EXTRACT(HOUR FROM tgGroup."TimestampGenerated") as "Hour_1",
			tgGroup."TranslatedMessage1",
			tgGroup."TimestampGenerated",
			tgGroup."TimestampGone" as "cond"
		FROM
			"Issue2564Table" tgGroup
		WHERE
			tgGroup."TimestampGone" IS NOT NULL AND
			tgGroup."TimestampGenerated" >= :from_1 AND
			tgGroup."TimestampGenerated" <= :to_1 AND
			tgGroup."MessageClassName" = 'Error'
	) tgGroup_1
GROUP BY
	tgGroup_1."ExternID1",
	tgGroup_1."TranslatedMessageGroup",
	tgGroup_1."Hour_1"

