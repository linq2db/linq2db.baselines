(426245) SELECT 
	t426245.Id = t426244.Id
FROM [DctSetpointtype(426244)] as t426244 (spt)
		LEFT JOIN (
			[VWellTree(426247)] as t426247 (t2)
				INNER JOIN [DctOu(426249)] as t426249 (tp2) ON ({t426247.ShopId?}? = {t426249.Id})
				LEFT JOIN [UacUsersDatagroup(426252)] as t426252 (cudg) ON ({t426249.Id} = {t426252.DatagroupId} AND {t426252.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(426257)] as t426257 (oudg) ON ({t426249.ParentId?}? = {t426257.DatagroupId} AND {t426257.UserId} = 150 AND {t426257.Inheritablepermission} > 0)
				INNER JOIN [Deviation(426277)] as t426277 (d) ON ({t426247.WellId?}? = {t426277.WellId})
		)  ON ({t426277.SetpointtypeId} = {t426244.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t426252.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t426257.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
