﻿BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	u.user_name,
	u.city,
	u.street,
	u.building_number
FROM
	UserStruct u
WHERE
	u.city = 'Springwood' AND u.street = 'Elm Street' AND
	u.building_number = 13

