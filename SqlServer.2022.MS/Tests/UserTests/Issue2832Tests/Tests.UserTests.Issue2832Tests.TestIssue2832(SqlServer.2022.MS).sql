(249429) SELECT 
	t249429.Id = t249428.Id
FROM [DctSetpointtype(249428)] as t249428 (spt)
		LEFT JOIN (
			[VWellTree(249431)] as t249431 (t2)
				INNER JOIN [DctOu(249433)] as t249433 (tp2) ON ({t249431.ShopId?}? = {t249433.Id})
				LEFT JOIN [UacUsersDatagroup(249436)] as t249436 (cudg) ON ({t249433.Id} = {t249436.DatagroupId} AND {t249436.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(249441)] as t249441 (oudg) ON ({t249433.ParentId?}? = {t249441.DatagroupId} AND {t249441.UserId} = 150 AND {t249441.Inheritablepermission} > 0)
				INNER JOIN [Deviation(249461)] as t249461 (d) ON ({t249431.WellId?}? = {t249461.WellId})
		)  ON ({t249461.SetpointtypeId} = {t249428.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t249436.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t249441.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
