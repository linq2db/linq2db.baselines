BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	x."StartDateTime",
	x."StartDateTime2",
	x."EndDateTime",
	x."PreNotification",
	x."PreNotification2",
	x."PreNotification3",
	x."StrField",
	x."Status"
FROM
	"Common_Topology_Locations" x
WHERE
	Floor(Extract(hour From x."StartDateTime"))::Int = 13
LIMIT 1

