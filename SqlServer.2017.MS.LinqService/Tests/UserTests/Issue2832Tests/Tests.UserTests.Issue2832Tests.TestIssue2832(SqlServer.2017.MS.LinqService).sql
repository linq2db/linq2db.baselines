(245655) SELECT 
	t245655.Id = t245654.Id
FROM [DctSetpointtype(245654)] as t245654 (spt)
		LEFT JOIN (
			[VWellTree(245657)] as t245657 (t2)
				INNER JOIN [DctOu(245659)] as t245659 (tp2) ON ({t245657.ShopId?}? = {t245659.Id})
				LEFT JOIN [UacUsersDatagroup(245662)] as t245662 (cudg) ON ({t245659.Id} = {t245662.DatagroupId} AND {t245662.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(245667)] as t245667 (oudg) ON ({t245659.ParentId?}? = {t245667.DatagroupId} AND {t245667.UserId} = 150 AND {t245667.Inheritablepermission} > 0)
				INNER JOIN [Deviation(245687)] as t245687 (d) ON ({t245657.WellId?}? = {t245687.WellId})
		)  ON ({t245687.SetpointtypeId} = {t245654.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t245662.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t245667.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
