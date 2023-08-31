-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: spoj
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `contest`
--
-- Drop the database if it exists
DROP DATABASE IF EXISTS spoj;

-- Create a new database
CREATE DATABASE spoj;

USE spoj;

DROP TABLE IF EXISTS `contest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contest` (
  `contest_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `end_time` time(6) DEFAULT NULL,
  PRIMARY KEY (`contest_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contest`
--

LOCK TABLES `contest` WRITE;
/*!40000 ALTER TABLE `contest` DISABLE KEYS */;
INSERT INTO `contest` VALUES (1,'Summer Coding Challenge','02:00:00.000000'),(2,'Algorithm Masters','01:00:00.000000'),(3,'Semester II Coding Masters','01:00:00.000000'),(4,'Winter Hackathon','03:00:00.000000'),(5,'Hack With Me','02:00:00.000000'),(6,'Codathon','02:00:00.000000'),(7,'jdoscoskdc','02:00:00.000000'),(8,'pagal pandey','01:00:00.000000');
/*!40000 ALTER TABLE `contest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contest_completion`
--

DROP TABLE IF EXISTS `contest_completion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contest_completion` (
  `completion_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `contest_id` int NOT NULL,
  `time_taken` int NOT NULL,
  PRIMARY KEY (`completion_id`),
  KEY `user_id` (`user_id`),
  KEY `contest_id` (`contest_id`),
  CONSTRAINT `contest_completion_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `contest_completion_ibfk_2` FOREIGN KEY (`contest_id`) REFERENCES `contest` (`contest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contest_completion`
--

LOCK TABLES `contest_completion` WRITE;
/*!40000 ALTER TABLE `contest_completion` DISABLE KEYS */;
/*!40000 ALTER TABLE `contest_completion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `problem`
--

DROP TABLE IF EXISTS `problem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `problem` (
  `contest_id` int DEFAULT NULL,
  `problem_id` int NOT NULL AUTO_INCREMENT,
  `boiler_code_cpp` text,
  `boiler_code_java` text,
  `boiler_code_python` text,
  `description` text,
  `example1_input` varchar(255) DEFAULT NULL,
  `example1_output` varchar(255) DEFAULT NULL,
  `example2_input` varchar(255) DEFAULT NULL,
  `example2_output` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`problem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `problem`
--

LOCK TABLES `problem` WRITE;
/*!40000 ALTER TABLE `problem` DISABLE KEYS */;
INSERT INTO `problem` VALUES (1,1,'#include <iostream>\n#include <vector>\n#include <unordered_map>\nusing namespace std;\n\nclass Solution {\npublic:\n    vector<int> twoSum(vector<int>& nums, int target) {\n    //write your code here and change the return value\n    return null;\n    }\n        \n};\n\nint main() {\n    Solution solution;\n    \n    int n;\n    cout << \"Enter the number of elements: \";\n    cin >> n;\n    \n    vector<int> nums(n);\n    cout << \"Enter the elements:\" << endl;\n    for (int i = 0; i < n; i++) {\n        cin >> nums[i];\n    }\n    \n    int target;\n    cout << \"Enter the target sum: \";\n    cin >> target;\n    \n    vector<int> result = solution.twoSum(nums, target);\n    cout << result << endl;\n    \n    return 0;\n}\n','import java.util.*;\n\npublic class Main {\n\n    public int[] twoSum(int[] nums, int target) {\n        // write your code here and change the return value\n\n        return null;\n    }\n\n    public static void main(String[] args) {\n        Scanner scanner = new Scanner(System.in);\n\n        System.out.print(\"Enter the number of elements: \");\n        int n = scanner.nextInt();\n\n        int[] nums = new int[n];\n        System.out.println(\"Enter the elements:\");\n        for (int i = 0; i < n; i++) {\n            nums[i] = scanner.nextInt();\n        }\n\n        System.out.print(\"Enter the target sum: \");\n        int target = scanner.nextInt();\n\n        Main solution = new Main();\n        int[] result = solution.twoSum(nums, target);\n        System.out.println(Arrays.toString(result));\n    }\n}','class Solution:\n    def two_sum(self, nums, target):\n        #write your code here\n\nif __name__ == \"__main__\":\n    solution = Solution()\n\n    n = int(input(\"Enter the number of elements: \"))\n    nums = []\n    print(\"Enter the elements:\")\n    for _ in range(n):\n        nums.append(int(input()))\n\n    target = int(input(\"Enter the target sum: \"))\n\n    result = solution.two_sum(nums, target)\n    print(result)','Given an array of integers and a target sum, return indices of the two numbers such that they add up to the target.','nums1 = [2, 7, 11, 15] target1 = 9','[0,1]','nums2 = [3, 2, 4] target2 = 6','[1, 2]','Two Sum'),(1,2,'#include <iostream>\n#include <sstream>\n#include <vector>\nusing namespace std;\n\nclass Solution {\npublic:\n    string reverseWords(string s) {\n    // write your code here and change the return value\n        return null\n    }\n};\n\nint main() {\n    Solution solution;\n    \n    string input_str;\n    cout << \"Enter a string: \";\n    getline(cin, input_str);\n    \n    string reversed_str = solution.reverseWords(input_str);\n    cout << reversed_str << endl;\n    \n    return 0;\n}\n','import java.util.Scanner;\n\npublic class Main {\n\n    public String reverseWords(String s) {\n        //write your code here and change the return value\n        return null;\n    }\n\n    public static void main(String[] args) {\n        Scanner scanner = new Scanner(System.in);\n\n        System.out.print(\"Enter a string: \");\n        String input = scanner.nextLine();\n\n        Main solution = new Main();\n        String reversed = solution.reverseWords(input);\n        System.out.println(reversed);\n    }\n}\n','class Solution:\n    def reverse_words(self, s):\n        #write your code here and change the return value\n        return null\n\nif __name__ == \"__main__\":\n    solution = Solution()\n    \n    input_str = input(\"Enter a string: \")\n    \n    reversed_str = solution.reverse_words(input_str)\n    print(reversed_str)\n','Given a string, reverse the order of words.','s1 = \"the sky is blue\"','blue is sky the','s2 = \"  hello world  \"','world hello','Reverse Words in a String'),(1,3,'#include <iostream>\n#include <vector>\n#include <unordered_map>\nusing namespace std;\n\nclass Solution {\npublic:\n    int subarraySum(vector<int>& nums, int k) {\n    //write your code here and change the return value\n        return null;\n    }\n};\n\nint main() {\n    Solution solution;\n\n    int n;\n    cout << \"Enter the number of elements: \";\n    cin >> n;\n\n    vector<int> nums(n);\n    cout << \"Enter the elements:\" << endl;\n    for (int i = 0; i < n; i++) {\n        cin >> nums[i];\n    }\n\n    int target;\n    cout << \"Enter the target sum: \";\n    cin >> target;\n\n    int result = solution.subarraySum(nums, target);\n    cout << result << endl;\n\n    return 0;\n}\n','import java.util.*;\n\npublic class Main {\n\n    public int subarraySum(int[] nums, int k) {\n        //write your code here and change the return value\n        return null;\n    }\n\n    public static void main(String[] args) {\n        Scanner scanner = new Scanner(System.in);\n\n        System.out.print(\"Enter the number of elements: \");\n        int n = scanner.nextInt();\n\n        int[] nums = new int[n];\n        System.out.println(\"Enter the elements:\");\n        for (int i = 0; i < n; i++) {\n            nums[i] = scanner.nextInt();\n        }\n\n        System.out.print(\"Enter the target sum: \");\n        int target = scanner.nextInt();\n\n        Main solution = new Main();\n        int result = solution.subarraySum(nums, target);\n        System.out.println(result);\n    }\n}\n','class Solution:\n    def subarray_sum(self, nums, k):\n    #write your code here and change the return value\n        return null\n\nif __name__ == \"__main__\":\n    solution = Solution()\n\n    n = int(input(\"Enter the number of elements: \"))\n    nums = []\n    print(\"Enter the elements:\")\n    for _ in range(n):\n        nums.append(int(input()))\n\n    target = int(input(\"Enter the target sum: \"))\n\n    result = solution.subarray_sum(nums, target)\n    print(target)\n','Given an array of integers and an integer k, find the total number of continuous subarrays whose sum equals k.','nums1 = [1, 1, 1] k1 = 2','Output: 2','nums2 = [1, 2, 3] k2 = 3','Output: 2','Subarray Sum Equals K'),(2,4,'#include <iostream>\n#include <vector>\n#include <unordered_map>\n#include <algorithm>\nusing namespace std;\n\nclass Solution {\npublic:\n    vector<vector<string>> groupAnagrams(vector<string>& strs) {\n        //write your code here and change the return value\n        return null;\n    }\n};\n\nint main() {\n    Solution solution;\n\n    int n;\n    cout << \"Enter the number of strings: \";\n    cin >> n;\n    cin.ignore(); // Consume the newline\n\n    vector<string> strs(n);\n    cout << \"Enter the strings:\" << endl;\n    for (int i = 0; i < n; i++) {\n        getline(cin, strs[i]);\n    }\n\n    vector<vector<string>> result = solution.groupAnagrams(strs);\n    cout << result << endl\n    return 0;\n}\n','import java.util.*;\n\npublic class Main{\n\n    public List<List<String>> groupAnagrams(String[] strs) {\n        //write your code here and change the return value\n        return null;\n    }\n\n    public static void main(String[] args) {\n        Scanner scanner = new Scanner(System.in);\n\n        System.out.print(\"Enter the number of strings: \");\n        int n = scanner.nextInt();\n        scanner.nextLine(); // Consume the newline\n\n        String[] strs = new String[n];\n        System.out.println(\"Enter the strings:\");\n        for (int i = 0; i < n; i++) {\n            strs[i] = scanner.nextLine();\n        }\n\n        Main solution = new Main();\n        List<List<String>> result = solution.groupAnagrams(strs);\n        System.out.println(result);\n    }\n}\n','class Solution:\n    def group_anagrams(self, strs):\n    #write your code here and change the nul value\n        return null\n\nif __name__ == \"__main__\":\n    solution = Solution()\n\n    n = int(input(\"Enter the number of strings: \"))\n    strs = []\n    print(\"Enter the strings:\")\n    for _ in range(n):\n        strs.append(input())\n\n    result = solution.group_anagrams(strs)\n    print(result)\n','Given an array of strings, group anagrams together.','strs1 = [\"eat\", \"tea\", \"tan\", \"ate\", \"nat\", \"bat\"]','Output: [[\"eat\",\"tea\",\"ate\"],[\"tan\",\"nat\"],[\"bat\"]]','strs2 = [\"a\"]','Output: [[\"a\"]]','Group Anagrams'),(2,5,'#include <iostream>\n#include <string>\nusing namespace std;\n\nclass Solution {\npublic:\n    string longestPalindrome(string s) {\n        //write your code here and change the return value\n        return null;\n    }\n};\n\nint main() {\n    Solution solution;\n\n    string input_str;\n    cout << \"Enter a string: \";\n    getline(cin, input_str);\n\n    string result = solution.longestPalindrome(input_str);\n    cout << result << endl;\n\n    return 0;\n}\n','import java.util.Scanner;\n\npublic class Main {\n\n    public String longestPalindrome(String s) {\n        //write your code here and change the return value\n        return null;\n    }\n\n    private int expandAroundCenter(String s, int left, int right) {\n        while (left >= 0 && right < s.length() && s.charAt(left) == s.charAt(right)) {\n            left--;\n            right++;\n        }\n        return right - left - 1;\n    }\n\n    public static void main(String[] args) {\n        Scanner scanner = new Scanner(System.in);\n\n        System.out.print(\"Enter a string: \");\n        String input = scanner.nextLine();\n\n        Main  solution = new Main();\n        String result = solution.longestPalindrome(input);\n        System.out.println(result);\n    }\n}\n','class Solution:\n    def longest_palindrome(self, s):\n        #write your code here and change the return value\n\nif __name__ == \"__main__\":\n    solution = Solution()\n\n    input_str = input(\"Enter a string: \")\n\n    result = solution.longest_palindrome(input_str)\n    print(result)\n','Given a string, find the longest palindromic substring.','s1 = \"babad\"','\"bab\" or \"aba\"','s2 = \"cbbd\"','Output: \"bb\"','Longest Palindromic Substring'),(3,6,'#include <iostream>\n#include <string>\n#include <unordered_map>\nusing namespace std;\n\nclass Solution {\npublic:\n    string minWindow(string s, string t) {\n    // write your code here and change the return value\n        return null;\n    }\n};\n\nint main() {\n    Solution solution;\n\n    string s, t;\n    cout << \"Enter the string: \";\n    getline(cin, s);\n    cout << \"Enter the target string: \";\n    getline(cin, t);\n\n    string result = solution.minWindow(s, t);\n    cout << result << endl;\n\n    return 0;\n}\n','import java.util.*;\n\npublic class Main {\n\n    public String minWindow(String s, String t) {\n        //write your code here and change the return value\n        return null;\n    }\n\n    public static void main(String[] args) {\n        Scanner scanner = new Scanner(System.in);\n\n        System.out.print(\"Enter the string: \");\n        String s = scanner.nextLine();\n        System.out.print(\"Enter the target string: \");\n        String t = scanner.nextLine();\n\n        Main solution = new Main();\n        String result = solution.minWindow(s, t);\n        System.out.println(result);\n    }\n}\n','class Solution:\n    def min_window(self, s, t):\n        #write your code here and change the return value\n        return null\n\nif __name__ == \"__main__\":\n    solution = Solution()\n\n    s = input(\"Enter the string: \")\n    t = input(\"Enter the target string: \")\n\n    result = solution.min_window(s, t)\n    print(result)\n','Given two strings S and T, find the minimum window in S which will contain all the characters in T.','S1 = \"ADOBECODEBANC\" T1 = \"ABC\"','Output: \"BANC\"','S2 = \"a\" T2 = \"aa\"','Output: \"\"','Minimum Window Substring'),(3,7,'#include <iostream>\n#include <stack>\n#include <unordered_map>\nusing namespace std;\n\nclass Solution {\npublic:\n    bool isValid(string s) {\n    //write your code here and change the return value\n        return null;\n    }\n};\n\nint main() {\n    Solution solution;\n\n    string input_str;\n    cout << \"Enter a string of parentheses: \";\n    getline(cin, input_str);\n\n    bool result = solution.isValid(input_str);\n    cout << (result ? \"true\" : \"false\") << endl;\n\n    return 0;\n}\n','import java.util.*;\n\npublic class Main {\n\n    public boolean isValid(String s) {\n        //write your code here and change the return value\n        return null;\n    }\n\n    public static void main(String[] args) {\n        Scanner scanner = new Scanner(System.in);\n\n        System.out.print(\"Enter a string of parentheses: \");\n        String input = scanner.nextLine();\n\n        Main solution = new Main();\n        boolean result = solution.isValid(input);\n        System.out.println(result);\n    }\n}\n','class Solution:\n    def is_valid(self, s):\n        #write your code here and change the return value\n        return null\n\nif __name__ == \"__main__\":\n    solution = Solution()\n\n    input_str = input(\"Enter a string of parentheses: \")\n\n    result = solution.is_valid(input_str)\n    print(result)\n','Given a string containing just the characters \"(\", \")\", \"{\", \"}\", \"[\" and \"]\", determine if the input string is valid','s1 = \"()\"','Output: True','s2 = \"()[]{}\"','Output: True','Valid Parentheses:'),(4,8,NULL,NULL,NULL,'Given an array of integers and an integer k, rotate the array to the right by k steps.','Array: [1, 2, 3, 4, 5, 6, 7]    k:3','Output: [5, 6, 7, 1, 2, 3, 4]','Array: [-1, -100, 3, 99]     k: 2','Output: [3, 99, -1, -100]','Rotate Array'),(4,9,NULL,NULL,NULL,'Given two arrays of integers, write a function to find the intersection of the arrays. The intersection is a new array containing distinct elements that appear in both arrays.','Array 1: [1, 2, 2, 1]     Array 2: [2, 2]','Output: [2]','Array 1: [4, 9, 5]      Array 2: [9, 4, 9, 8, 4]','Output: [4, 9]','Array Intersection'),(4,10,NULL,NULL,NULL,'Given an array of integers and an integer k, rotate the array to the right by k steps.','Array: [1, 2, 3, 4, 5, 6, 7]    k:3','Output: [5, 6, 7, 1, 2, 3, 4]','Array: [-1, -100, 3, 99]     k: 2','Output: [3, 99, -1, -100]','Rotate Array'),(4,11,NULL,NULL,NULL,'Given two arrays of integers, write a function to find the intersection of the arrays. The intersection is a new array containing distinct elements that appear in both arrays.','Array 1: [1, 2, 2, 1]     Array 2: [2, 2]','Output: [2]','Array 1: [4, 9, 5]      Array 2: [9, 4, 9, 8, 4]','Output: [4, 9]','Array Intersection'),(4,12,NULL,NULL,NULL,'Given an array of integers and an integer k, rotate the array to the right by k steps.','Array: [1, 2, 3, 4, 5, 6, 7]    k:3','Output: [5, 6, 7, 1, 2, 3, 4]','Array: [-1, -100, 3, 99]     k: 2','Output: [3, 99, -1, -100]','Rotate Array'),(4,13,NULL,NULL,NULL,'Given two arrays of integers, write a function to find the intersection of the arrays. The intersection is a new array containing distinct elements that appear in both arrays.','Array 1: [1, 2, 2, 1]     Array 2: [2, 2]','Output: [2]','Array 1: [4, 9, 5]      Array 2: [9, 4, 9, 8, 4]','Output: [4, 9]','Array Intersection'),(4,14,NULL,NULL,NULL,'hobhbinijn',NULL,NULL,NULL,NULL,'igvougyb'),(4,15,NULL,NULL,NULL,'ouhbuhiunon',NULL,NULL,NULL,NULL,'ohu8yguh'),(4,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'hbininon'),(4,17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'uhuhijok-ok['),(4,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'hbininon'),(4,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'uhuhijok-ok['),(4,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'hbininon'),(4,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'uhuhijok-ok['),(4,22,NULL,NULL,NULL,'uguihijopjn',NULL,NULL,NULL,NULL,'hbininon'),(4,23,NULL,NULL,NULL,'lu;ivuohoijlmlm',NULL,NULL,NULL,NULL,'uhuhijok-ok['),(0,24,NULL,NULL,NULL,'sfjkndfosdnofspodmf',NULL,NULL,NULL,NULL,'kjsdfssoijsdoij'),(0,25,NULL,NULL,NULL,'kjsdonaoksda',NULL,NULL,NULL,NULL,'kbdjanskodma'),(0,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(0,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(0,28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(0,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(0,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,32,NULL,NULL,NULL,'jsdncksamncpkmsd cksdmksmd','kjndsndosmd','kjsdojsd','iheduwhdi','hhdiwjdiwjei','jsndosdopsokf[s'),(6,33,NULL,NULL,NULL,'nkdjdiwjpodkwe[pld','dhbuifw',NULL,NULL,NULL,'ijdokdokweodnowediwej'),(0,34,NULL,NULL,NULL,'jofijwiefjwejdw','owjedojweidjw',NULL,NULL,NULL,'shanu');
/*!40000 ALTER TABLE `problem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `role_id` int NOT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ADMIN'),(2,'USER'),(3,NULL);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_seq`
--

DROP TABLE IF EXISTS `role_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_seq`
--

LOCK TABLES `role_seq` WRITE;
/*!40000 ALTER TABLE `role_seq` DISABLE KEYS */;
INSERT INTO `role_seq` VALUES (101);
/*!40000 ALTER TABLE `role_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submission`
--

DROP TABLE IF EXISTS `submission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `submission` (
  `problem_id` int DEFAULT NULL,
  `submission_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `code` text,
  `status` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `problem_title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`submission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submission`
--

LOCK TABLES `submission` WRITE;
/*!40000 ALTER TABLE `submission` DISABLE KEYS */;
INSERT INTO `submission` VALUES (1,1,952,'#include <iostream>\n#include <vector>\n#include <unordered_map>\nusing namespace std;\n\nclass Solution {\npublic:\n    vector<int> twoSum(vector<int>& nums, int target) {\n    //write your code here and change the return value\n    return null;\n    }\n        \n};\n\nint main() {\n    Solution solution;\n    \n    int n;\n    cout << \"Enter the number of elements: \";\n    cin >> n;\n    \n    vector<int> nums(n);\n    cout << \"Enter the elements:\" << endl;\n    for (int i = 0; i < n; i++) {\n        cin >> nums[i];\n    }\n    \n    int target;\n    cout << \"Enter the target sum: \";\n    cin >> target;\n    \n    vector<int> result = solution.twoSum(nums, target);\n    cout << result << endl;\n    \n    return 0;\n}\n','Rejected','cpp',NULL),(1,2,1302,'#include <iostream>\n#include <vector>\n#include <unordered_map>\nusing namespace std;\n\nclass Solution {\npublic:\n    vector<int> twoSum(vector<int>& nums, int target) {\n    //write your code here and change the return value\n    return null;\n    }\n        \n};\n\nint main() {\n    Solution solution;\n    \n    int n;\n    cout << \"Enter the number of elements: \";\n    cin >> n;\n    \n    vector<int> nums(n);\n    cout << \"Enter the elements:\" << endl;\n    for (int i = 0; i < n; i++) {\n        cin >> nums[i];\n    }\n    \n    int target;\n    cout << \"Enter the target sum: \";\n    cin >> target;\n    \n    vector<int> result = solution.twoSum(nums, target);\n    cout << result << endl;\n    \n    return 0;\n}\n','Rejected','cpp',NULL),(2,3,1302,'#include <iostream>\n#include <sstream>\n#include <vector>\nusing namespace std;\n\nclass Solution {\npublic:\n    string reverseWords(string s) {\n    // write your code here and change the return value\n        return null\n    }\n};\n\nint main() {\n    Solution solution;\n    \n    string input_str;\n    cout << \"Enter a string: \";\n    getline(cin, input_str);\n    \n    string reversed_str = solution.reverseWords(input_str);\n    cout << reversed_str << endl;\n    \n    return 0;\n}\n','Rejected','cpp','Reverse Words in a String'),(1,52,1302,'#include <iostream>\n#include <vector>\n#include <unordered_map>\nusing namespace std;\n\nclass Solution {\npublic:\n    vector<int> twoSum(vector<int>& nums, int target) {\n    //write your code here and change the return value\n    return null;\n    }\n        \n};\n\nint main() {\n    Solution solution;\n    \n    int n;\n    cout << \"Enter the number of elements: \";\n    cin >> n;\n    \n    vector<int> nums(n);\n    cout << \"Enter the elements:\" << endl;\n    for (int i = 0; i < n; i++) {\n        cin >> nums[i];\n    }\n    \n    int target;\n    cout << \"Enter the target sum: \";\n    cin >> target;\n    \n    vector<int> result = solution.twoSum(nums, target);\n    cout << result << endl;\n    \n    return 0;\n}\n','Rejected','cpp','Two Sum'),(1,53,1302,'#include <iostream>\n#include <vector>\n#include <unordered_map>\nusing namespace std;\n\nint main() {\n    cout<<\"[0, 1]\"<<endl;\n    cout<<\"[1, 2]\"<<endl;\n    cout<<\"[0, 1]\"<<endl;\n    \n    return 0;\n}\n','Rejected','cpp','Two Sum'),(1,54,1302,'#include <iostream>\n\nint main() {\n    std::cout << \"[0, 1]\" << std::endl;\n    std::cout << \"[1, 2]\" << std::endl;\n    std::cout << \"[0, 1]\" << std::endl;\n    return 0;\n}','Rejected','cpp','Two Sum'),(1,55,1302,'#include <iostream>\n\nint main() {\n    std::cout << \"[0, 1]\" << std::endl;\n    std::cout << \"[1, 2]\" << std::endl;\n    std::cout << \"[0, 1]\" << std::endl;\n    return 0;\n}','Accepted','cpp','Two Sum'),(1,56,1302,'#include <iostream>\n\nint main() {\n    std::cout << \"[0, 1]\" << std::endl;\n    std::cout << \"[1, 2]\" << std::endl;\n    std::cout << \"[0, 1]\" << std::endl;\n    return 0;\n}','Accepted','cpp','Two Sum'),(1,57,1302,'#include <iostream>\n\nint main() {\n    std::cout << \"[0, 1]\" << std::endl;\n    std::cout << \"[1, 2]\" << std::endl;\n    std::cout << \"[0, 1]\" << std::endl;\n    return 0;\n}','Accepted','cpp','Two Sum'),(1,58,1302,'#include <iostream>\n\nint main() {\n    std::cout << \"[0, 1]\" << std::endl;\n    std::cout << \"[1, 2]\" << std::endl;\n    std::cout << \"[0, 1]\" << std::endl;\n    return 0;\n}','Accepted','cpp','Two Sum'),(1,59,1302,'#include <iostream>\n#include <vector>\n#include <unordered_map>\nusing namespace std;\n\nclass Solution {\npublic:\n    vector<int> twoSum(vector<int>& nums, int target) {\n    //write your code here and change the return value\n    return null;\n    }\n        \n};\n\nint main() {\n    Solution solution;\n    \n    int n;\n    cout << \"Enter the number of elements: \";\n    cin >> n;\n    \n    vector<int> nums(n);\n    cout << \"Enter the elements:\" << endl;\n    for (int i = 0; i < n; i++) {\n        cin >> nums[i];\n    }\n    \n    int target;\n    cout << \"Enter the target sum: \";\n    cin >> target;\n    \n    vector<int> result = solution.twoSum(nums, target);\n    cout << result << endl;\n    \n    return 0;\n}\n','Rejected','cpp','Two Sum'),(1,60,1302,'#include <iostream>\n#include <vector>\n#include <unordered_map>\nusing namespace std;\n\nclass Solution {\npublic:\n    vector<int> twoSum(vector<int>& nums, int target) {\n    //write your code here and change the return value\n    return null;\n    }\n        \n};\n\nint main() {\n    Solution solution;\n    \n    int n;\n    cout << \"Enter the number of elements: \";\n    cin >> n;\n    \n    vector<int> nums(n);\n    cout << \"Enter the elements:\" << endl;\n    for (int i = 0; i < n; i++) {\n        cin >> nums[i];\n    }\n    \n    int target;\n    cout << \"Enter the target sum: \";\n    cin >> target;\n    \n    vector<int> result = solution.twoSum(nums, target);\n    cout << result << endl;\n    \n    return 0;\n}\n','Rejected','cpp','Two Sum');
/*!40000 ALTER TABLE `submission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submission_seq`
--

DROP TABLE IF EXISTS `submission_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `submission_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submission_seq`
--

LOCK TABLES `submission_seq` WRITE;
/*!40000 ALTER TABLE `submission_seq` DISABLE KEYS */;
INSERT INTO `submission_seq` VALUES (151);
/*!40000 ALTER TABLE `submission_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submit_contest`
--

DROP TABLE IF EXISTS `submit_contest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `submit_contest` (
  `contest_submit_id` int NOT NULL,
  `contest_name` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `solved_question` int DEFAULT NULL,
  `time_taken` varchar(255) DEFAULT NULL,
  `total_question` int DEFAULT NULL,
  `total_time` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`contest_submit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submit_contest`
--

LOCK TABLES `submit_contest` WRITE;
/*!40000 ALTER TABLE `submit_contest` DISABLE KEYS */;
INSERT INTO `submit_contest` VALUES (1,'Summer Coding Challenge',NULL,0,'00:15:28 Hrs',3,'02:00:00',952),(2,'Summer Coding Challenge',NULL,0,'00:0:26 Hrs',3,'02:00:00',1302),(3,'Summer Coding Challenge',NULL,0,'00:0:12 Hrs',3,'02:00:00',1302),(52,'Summer Coding Challenge',NULL,0,'00:0:31 Hrs',3,'02:00:00',1302),(53,'Algorithm Masters',NULL,0,'00:0:0 Hrs',2,'01:00:00',1302),(54,'Summer Coding Challenge',NULL,0,'00:0:0 Hrs',3,'02:00:00',1302),(55,'Summer Coding Challenge',NULL,0,'00:0:0 Hrs',3,'02:00:00',1302),(56,'Algorithm Masters',NULL,0,'00:0:4 Hrs',2,'01:00:00',1302),(57,'Summer Coding Challenge',NULL,0,'00:0:27 Hrs',3,'02:00:00',1302),(58,'Summer Coding Challenge',NULL,0,'00:0:2 Hrs',3,'02:00:00',1302),(59,'Summer Coding Challenge',NULL,0,'00:0:33 Hrs',3,'02:00:00',1302),(60,'Summer Coding Challenge',NULL,0,'00:0:23 Hrs',3,'02:00:00',1302);
/*!40000 ALTER TABLE `submit_contest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submit_contest_seq`
--

DROP TABLE IF EXISTS `submit_contest_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `submit_contest_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submit_contest_seq`
--

LOCK TABLES `submit_contest_seq` WRITE;
/*!40000 ALTER TABLE `submit_contest_seq` DISABLE KEYS */;
INSERT INTO `submit_contest_seq` VALUES (151);
/*!40000 ALTER TABLE `submit_contest_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_case`
--

DROP TABLE IF EXISTS `test_case`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_case` (
  `problem_id` int DEFAULT NULL,
  `testcase_id` int NOT NULL AUTO_INCREMENT,
  `expected_output` varchar(255) DEFAULT NULL,
  `input` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`testcase_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_case`
--

LOCK TABLES `test_case` WRITE;
/*!40000 ALTER TABLE `test_case` DISABLE KEYS */;
INSERT INTO `test_case` VALUES (1,1,'[0, 1]','4\n2\n7\n11\n15\n9'),(1,2,'[1, 2]','3\n3\n2\n4\n6'),(1,3,'[0, 1]','2\n3\n3\n6');
/*!40000 ALTER TABLE `test_case` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `enable` bit(1) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UK_sb8bbouer5wak8vyiiy4pf2bx` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=1303 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (902,'Akash_0901','Akash@2000','akashsingh@gmail.com','AKash','Singh','7619882271',_binary ''),(952,'Ansh_0901','Akash@2000','anshsingh@gmail.com','Ansh','Singh','7619882271',_binary ''),(1002,'shiva_0901','Akash@2000','shivasingh@gmail.com','Shiva','Singh','07619882271',_binary ''),(1052,'shivasingh_0901','Akash@2000','shivasingh@gmail.com','Shiva','Singh','07619882271',_binary ''),(1053,'','','','','','',_binary ''),(1054,'test123','test456','','','','',_binary ''),(1055,'jdhfs','ijijapdoja','asjdia','uadii','jhdja','aiuhduha',_binary ''),(1102,'kjsfoshdo','tyygoju','yfyghuijuihu','ftfyuihiu','yffgygyh','ytfgyug9uih',_binary ''),(1103,'yashashwini','tyygoju','yfyghuijuihu','ftfyuihiu','yffgygyh','ytfgyug9uih',_binary ''),(1152,'jksndk','jjoandamd','kjsdnokandkaasda','kaouisdhoasid','dbiaudoia','aojokdasjhdoajsd',_binary ''),(1202,'pwmdowmd','Akash@2000','','','','',_binary ''),(1203,'aijs9uhaikoax','Akash@2000','','','','',_binary ''),(1204,'nonwinkmaas','Akash@2000','','','','',_binary ''),(1205,'nonwinkmaasdwed','Akash@2000','','','','',_binary ''),(1206,'nonwinkihbfi','Akash@2000','','','','',_binary ''),(1207,'nonwinkihbfidws','Akash@2000','','','','',_binary ''),(1208,'nonwinkihbfisds','Akash@2000','','','','',_binary ''),(1209,'jasjhdioajdpoada','ojnasodapoasd','','','','',_binary ''),(1252,'Shambhoo_0901','Akash@2000','shambhoo@gmail.com','Shambhoo','Devi','9415662612',_binary ''),(1302,'Yashashvi','Akash@2000','yashashvi@gmail.com','yashashvi','Singh','7619882271',_binary '');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `role_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `user_role_id` int NOT NULL,
  PRIMARY KEY (`user_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (2,902,202),(1,902,203),(2,952,252),(2,1002,302),(2,1052,352),(2,1053,353),(2,1054,354),(2,1055,355),(2,1102,402),(2,1103,403),(2,1152,452),(2,1202,502),(2,1203,503),(2,1204,504),(2,1205,505),(2,1206,506),(2,1207,507),(2,1208,508),(2,1209,509),(2,1252,552),(2,1302,602);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role_seq`
--

DROP TABLE IF EXISTS `user_role_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role_seq`
--

LOCK TABLES `user_role_seq` WRITE;
/*!40000 ALTER TABLE `user_role_seq` DISABLE KEYS */;
INSERT INTO `user_role_seq` VALUES (701);
/*!40000 ALTER TABLE `user_role_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_seq`
--

DROP TABLE IF EXISTS `user_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_seq`
--

LOCK TABLES `user_seq` WRITE;
/*!40000 ALTER TABLE `user_seq` DISABLE KEYS */;
INSERT INTO `user_seq` VALUES (1401);
/*!40000 ALTER TABLE `user_seq` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-30 22:24:36
SELECT * FROM user;