(140835) SELECT 
	t140835.Id = t140834.Id
FROM [DctSetpointtype(140834)] as t140834 (spt)
		LEFT JOIN (
			[VWellTree(140837)] as t140837 (t2)
				INNER JOIN [DctOu(140839)] as t140839 (tp2) ON ({t140837.ShopId?}? = {t140839.Id})
				LEFT JOIN [UacUsersDatagroup(140842)] as t140842 (cudg) ON ({t140839.Id} = {t140842.DatagroupId} AND {t140842.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(140847)] as t140847 (oudg) ON ({t140839.ParentId?}? = {t140847.DatagroupId} AND {t140847.UserId} = 150 AND {t140847.Inheritablepermission} > 0)
				INNER JOIN [Deviation(140867)] as t140867 (d) ON ({t140837.WellId?}? = {t140867.WellId})
		)  ON ({t140867.SetpointtypeId} = {t140834.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t140842.Permission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), CAST(t140847.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), NULL)?}? IS NOT NULL)
