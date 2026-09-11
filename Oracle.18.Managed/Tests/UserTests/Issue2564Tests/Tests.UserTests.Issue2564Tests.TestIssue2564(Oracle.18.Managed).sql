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
	SUM(CAST(CAST(Floor(Extract(Day From (tgGroup_1."TimestampGone" - tgGroup_1."TimestampGenerated"))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (tgGroup_1."TimestampGone" - tgGroup_1."TimestampGenerated"))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (tgGroup_1."TimestampGone" - tgGroup_1."TimestampGenerated"))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (tgGroup_1."TimestampGone" - tgGroup_1."TimestampGenerated")) * 10000000D)) AS Number(19)) AS Float) / 10000D)
FROM
	(
		SELECT
			tgGroup."ExternID1",
			tgGroup."TranslatedMessageGroup",
			EXTRACT(HOUR FROM tgGroup."TimestampGenerated") as "Hour_1",
			tgGroup."TranslatedMessage1",
			tgGroup."TimestampGenerated",
			tgGroup."TimestampGone"
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

