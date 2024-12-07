(703842) SELECT 
	t703842.Id = t703841.Id
FROM [DctSetpointtype(703841)] as t703841 (spt)
		LEFT JOIN (
			[VWellTree(703844)] as t703844 (t2)
				INNER JOIN [DctOu(703846)] as t703846 (tp2) ON ({t703844.ShopId?}? = {t703846.Id})
				LEFT JOIN [UacUsersDatagroup(703849)] as t703849 (cudg) ON ({t703846.Id} = {t703849.DatagroupId} AND {t703849.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(703854)] as t703854 (oudg) ON ({t703846.ParentId?}? = {t703854.DatagroupId} AND {t703854.UserId} = 150 AND {t703854.Inheritablepermission} > 0)
				INNER JOIN [Deviation(703874)] as t703874 (d) ON ({t703844.WellId?}? = {t703874.WellId})
		)  ON ({t703874.SetpointtypeId} = {t703841.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t703849.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t703854.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
