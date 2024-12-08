(426246) SELECT 
	t426246.Id = t426245.Id
FROM [DctSetpointtype(426245)] as t426245 (spt)
		LEFT JOIN (
			[VWellTree(426248)] as t426248 (t2)
				INNER JOIN [DctOu(426250)] as t426250 (tp2) ON ({t426248.ShopId?}? = {t426250.Id})
				LEFT JOIN [UacUsersDatagroup(426253)] as t426253 (cudg) ON ({t426250.Id} = {t426253.DatagroupId} AND {t426253.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(426258)] as t426258 (oudg) ON ({t426250.ParentId?}? = {t426258.DatagroupId} AND {t426258.UserId} = 150 AND {t426258.Inheritablepermission} > 0)
				INNER JOIN [Deviation(426278)] as t426278 (d) ON ({t426248.WellId?}? = {t426278.WellId})
		)  ON ({t426278.SetpointtypeId} = {t426245.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t426253.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t426258.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
