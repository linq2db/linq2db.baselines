BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	k_1.ID,
	k_1.NAME,
	TO_DATE('2020-02-29 17:54:55.12312', '%Y-%m-%d %H:%M:%S.%F5')
FROM
	Issue1189Customer k_1

