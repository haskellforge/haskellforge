-- Task ID: HumanEval/14
-- Assigned To: Author A

-- Python Implementation:

-- from typing import List
-- 
-- 
-- def all_prefixes(string: str) -> List[str]:
--     """ Return list of all prefixes from shortest to longest of the input string
--     >>> all_prefixes('abc')
--     ['a', 'ab', 'abc']
--     """
--     result = []
-- 
--     for i in range(len(string)):
--         result.append(string[:i+1])
--     return result
-- 


-- Haskell Implementation:

-- Return list of all prefixes from shortest to longest of the input string
-- >>> all_prefixes "abc"
-- ["a","ab","abc"]
all_prefixes :: String  -> [String]
all_prefixes string = ⭐ [take (i+1) string | ⭐ i <- ⭐ [0..length string - 1]]
