(249468) SELECT 
	t249468.Id = t249467.Id
FROM [DctSetpointtype(249467)] as t249467 (spt)
		LEFT JOIN (
			[VWellTree(249470)] as t249470 (t2)
				INNER JOIN [DctOu(249472)] as t249472 (tp2) ON ({t249470.ShopId?}? = {t249472.Id})
				LEFT JOIN [UacUsersDatagroup(249475)] as t249475 (cudg) ON ({t249472.Id} = {t249475.DatagroupId} AND {t249475.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(249480)] as t249480 (oudg) ON ({t249472.ParentId?}? = {t249480.DatagroupId} AND {t249480.UserId} = 150 AND {t249480.Inheritablepermission} > 0)
				INNER JOIN [Deviation(249500)] as t249500 (d) ON ({t249470.WellId?}? = {t249500.WellId})
		)  ON ({t249500.SetpointtypeId} = {t249467.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t249475.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t249480.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
