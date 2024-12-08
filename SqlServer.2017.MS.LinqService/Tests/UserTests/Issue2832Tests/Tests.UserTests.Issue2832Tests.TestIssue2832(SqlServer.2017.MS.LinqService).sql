(245651) SELECT 
	t245651.Id = t245650.Id
FROM [DctSetpointtype(245650)] as t245650 (spt)
		LEFT JOIN (
			[VWellTree(245653)] as t245653 (t2)
				INNER JOIN [DctOu(245655)] as t245655 (tp2) ON ({t245653.ShopId?}? = {t245655.Id})
				LEFT JOIN [UacUsersDatagroup(245658)] as t245658 (cudg) ON ({t245655.Id} = {t245658.DatagroupId} AND {t245658.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(245663)] as t245663 (oudg) ON ({t245655.ParentId?}? = {t245663.DatagroupId} AND {t245663.UserId} = 150 AND {t245663.Inheritablepermission} > 0)
				INNER JOIN [Deviation(245683)] as t245683 (d) ON ({t245653.WellId?}? = {t245683.WellId})
		)  ON ({t245683.SetpointtypeId} = {t245650.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t245658.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t245663.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
