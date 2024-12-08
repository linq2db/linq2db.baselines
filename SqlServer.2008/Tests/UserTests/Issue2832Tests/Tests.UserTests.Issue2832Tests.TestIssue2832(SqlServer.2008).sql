(238784) SELECT 
	t238784.Id = t238783.Id
FROM [DctSetpointtype(238783)] as t238783 (spt)
		LEFT JOIN (
			[VWellTree(238786)] as t238786 (t2)
				INNER JOIN [DctOu(238788)] as t238788 (tp2) ON ({t238786.ShopId?}? = {t238788.Id})
				LEFT JOIN [UacUsersDatagroup(238791)] as t238791 (cudg) ON ({t238788.Id} = {t238791.DatagroupId} AND {t238791.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(238796)] as t238796 (oudg) ON ({t238788.ParentId?}? = {t238796.DatagroupId} AND {t238796.UserId} = 150 AND {t238796.Inheritablepermission} > 0)
				INNER JOIN [Deviation(238816)] as t238816 (d) ON ({t238786.WellId?}? = {t238816.WellId})
		)  ON ({t238816.SetpointtypeId} = {t238783.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t238791.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t238796.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
