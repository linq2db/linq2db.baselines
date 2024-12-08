(491404) SELECT 
	t491404.Id = t491403.Id
FROM [DctSetpointtype(491403)] as t491403 (spt)
		LEFT JOIN (
			[VWellTree(491406)] as t491406 (t2)
				INNER JOIN [DctOu(491408)] as t491408 (tp2) ON ({t491406.ShopId?}? = {t491408.Id})
				LEFT JOIN [UacUsersDatagroup(491411)] as t491411 (cudg) ON ({t491408.Id} = {t491411.DatagroupId} AND {t491411.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(491416)] as t491416 (oudg) ON ({t491408.ParentId?}? = {t491416.DatagroupId} AND {t491416.UserId} = 150 AND {t491416.Inheritablepermission} > 0)
				INNER JOIN [Deviation(491436)] as t491436 (d) ON ({t491406.WellId?}? = {t491436.WellId})
		)  ON ({t491436.SetpointtypeId} = {t491403.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t491411.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t491416.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
