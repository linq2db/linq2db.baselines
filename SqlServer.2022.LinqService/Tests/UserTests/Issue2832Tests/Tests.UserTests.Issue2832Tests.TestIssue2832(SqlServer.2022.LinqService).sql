(248511) SELECT 
	t248511.Id = t248510.Id
FROM [DctSetpointtype(248510)] as t248510 (spt)
		LEFT JOIN (
			[VWellTree(248513)] as t248513 (t2)
				INNER JOIN [DctOu(248515)] as t248515 (tp2) ON ({t248513.ShopId?}? = {t248515.Id})
				LEFT JOIN [UacUsersDatagroup(248518)] as t248518 (cudg) ON ({t248515.Id} = {t248518.DatagroupId} AND {t248518.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(248523)] as t248523 (oudg) ON ({t248515.ParentId?}? = {t248523.DatagroupId} AND {t248523.UserId} = 150 AND {t248523.Inheritablepermission} > 0)
				INNER JOIN [Deviation(248543)] as t248543 (d) ON ({t248513.WellId?}? = {t248543.WellId})
		)  ON ({t248543.SetpointtypeId} = {t248510.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t248518.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t248523.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
