(106584) SELECT 
	t106584.Id = t106583.Id
FROM [DctSetpointtype(106583)] as t106583 (spt)
		LEFT JOIN (
			[VWellTree(106586)] as t106586 (t2)
				INNER JOIN [DctOu(106588)] as t106588 (tp2) ON ({t106586.ShopId?}? = {t106588.Id})
				LEFT JOIN [UacUsersDatagroup(106591)] as t106591 (cudg) ON ({t106588.Id} = {t106591.DatagroupId} AND {t106591.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(106596)] as t106596 (oudg) ON ({t106588.ParentId?}? = {t106596.DatagroupId} AND {t106596.UserId} = 150 AND {t106596.Inheritablepermission} > 0)
				INNER JOIN [Deviation(106616)] as t106616 (d) ON ({t106586.WellId?}? = {t106616.WellId})
		)  ON ({t106616.SetpointtypeId} = {t106583.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t106591.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t106596.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
