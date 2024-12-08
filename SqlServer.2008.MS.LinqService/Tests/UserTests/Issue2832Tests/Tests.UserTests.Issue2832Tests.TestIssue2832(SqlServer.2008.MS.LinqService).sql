(238905) SELECT 
	t238905.Id = t238904.Id
FROM [DctSetpointtype(238904)] as t238904 (spt)
		LEFT JOIN (
			[VWellTree(238907)] as t238907 (t2)
				INNER JOIN [DctOu(238909)] as t238909 (tp2) ON ({t238907.ShopId?}? = {t238909.Id})
				LEFT JOIN [UacUsersDatagroup(238912)] as t238912 (cudg) ON ({t238909.Id} = {t238912.DatagroupId} AND {t238912.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(238917)] as t238917 (oudg) ON ({t238909.ParentId?}? = {t238917.DatagroupId} AND {t238917.UserId} = 150 AND {t238917.Inheritablepermission} > 0)
				INNER JOIN [Deviation(238937)] as t238937 (d) ON ({t238907.WellId?}? = {t238937.WellId})
		)  ON ({t238937.SetpointtypeId} = {t238904.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t238912.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t238917.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
