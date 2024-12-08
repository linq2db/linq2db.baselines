(503500) SELECT 
	t503500.Id = t503499.Id
FROM [DctSetpointtype(503499)] as t503499 (spt)
		LEFT JOIN (
			[VWellTree(503502)] as t503502 (t2)
				INNER JOIN [DctOu(503504)] as t503504 (tp2) ON ({t503502.ShopId?}? = {t503504.Id})
				LEFT JOIN [UacUsersDatagroup(503507)] as t503507 (cudg) ON ({t503504.Id} = {t503507.DatagroupId} AND {t503507.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(503512)] as t503512 (oudg) ON ({t503504.ParentId?}? = {t503512.DatagroupId} AND {t503512.UserId} = 150 AND {t503512.Inheritablepermission} > 0)
				INNER JOIN [Deviation(503532)] as t503532 (d) ON ({t503502.WellId?}? = {t503532.WellId})
		)  ON ({t503532.SetpointtypeId} = {t503499.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t503507.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t503512.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
