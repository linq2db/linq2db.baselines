(249511) SELECT 
	t249511.Id = t249510.Id
FROM [DctSetpointtype(249510)] as t249510 (spt)
		LEFT JOIN (
			[VWellTree(249513)] as t249513 (t2)
				INNER JOIN [DctOu(249515)] as t249515 (tp2) ON ({t249513.ShopId?}? = {t249515.Id})
				LEFT JOIN [UacUsersDatagroup(249518)] as t249518 (cudg) ON ({t249515.Id} = {t249518.DatagroupId} AND {t249518.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(249523)] as t249523 (oudg) ON ({t249515.ParentId?}? = {t249523.DatagroupId} AND {t249523.UserId} = 150 AND {t249523.Inheritablepermission} > 0)
				INNER JOIN [Deviation(249543)] as t249543 (d) ON ({t249513.WellId?}? = {t249543.WellId})
		)  ON ({t249543.SetpointtypeId} = {t249510.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t249518.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t249523.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
