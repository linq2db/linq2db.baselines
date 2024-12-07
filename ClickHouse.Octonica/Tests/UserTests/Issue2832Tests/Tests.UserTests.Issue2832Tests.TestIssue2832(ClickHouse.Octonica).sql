(167892) SELECT 
	t167892.Id = t167891.Id
FROM [DctSetpointtype(167891)] as t167891 (spt)
		LEFT JOIN (
			(167929) SELECT 
				t167929.SetpointtypeId        = t167924.SetpointtypeId,
				t167929.Permission            = t167899.Permission?,
				t167929.Inheritablepermission = t167904.Inheritablepermission?
			FROM [VWellTree(167894)] as t167894 (t2)
					INNER JOIN [DctOu(167896)] as t167896 (tp2) ON ({t167894.ShopId?}? = {t167896.Id})
					LEFT JOIN [UacUsersDatagroup(167899)] as t167899 (cudg) ON ({t167896.Id} = {t167899.DatagroupId} AND {t167899.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(167904)] as t167904 (oudg) ON ({t167896.ParentId?}? = {t167904.DatagroupId} AND {t167904.UserId} = 150 AND {t167904.Inheritablepermission} > 0)
					INNER JOIN [Deviation(167924)] as t167924 (d) ON ({t167894.WellId?}? = {t167924.WellId})
		) as t167929 (t1) ON ({t167929.SetpointtypeId?} = {t167891.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t167929.Permission AS (System.Nullable`1[System.Decimal], Decimal128, "29", "10")), CAST(t167929.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal128, "29", "10")), NULL)?}? IS NOT NULL)
