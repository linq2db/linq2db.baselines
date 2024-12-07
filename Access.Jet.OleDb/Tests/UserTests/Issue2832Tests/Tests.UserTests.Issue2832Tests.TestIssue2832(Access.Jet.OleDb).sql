(307182) SELECT 
	t307182.Id = t307181.Id
FROM [DctSetpointtype(307181)] as t307181 (spt)
		LEFT JOIN (
			(307218) SELECT 
				t307218.SetpointtypeId = t307214.SetpointtypeId
			FROM [VWellTree(307184)] as t307184 (t2)
					INNER JOIN [DctOu(307186)] as t307186 (tp2) ON ({t307184.ShopId?}? = {t307186.Id})
					LEFT JOIN [UacUsersDatagroup(307189)] as t307189 (cudg) ON ({t307186.Id} = {t307189.DatagroupId} AND {t307189.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(307194)] as t307194 (oudg) ON ({t307186.ParentId?}? = {t307194.DatagroupId} AND {t307194.UserId} = 150 AND {t307194.Inheritablepermission} > 0)
					INNER JOIN [Deviation(307214)] as t307214 (d) ON ({t307184.WellId?}? = {t307214.WellId})
			WHERE
				({UTILS.GREATESTNOTNULL3(t307189.Permission, t307194.Inheritablepermission, NULL)?}? IS NOT NULL)
		) as t307218 (t2_1) ON ({t307218.SetpointtypeId?} = {t307181.Id})
