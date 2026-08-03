-- Oracle.23.Managed Oracle.Managed Oracle12
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
	EXTRACT(HOUR FROM x."StartDateTime") = 13
FETCH NEXT 1 ROWS ONLY

