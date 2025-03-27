
package utils;

import java.util.regex.Pattern;
import java.util.regex.Matcher;

public class EmailValidator {
    // Regex kiểm tra email chỉ với tên miền hợp lệ
    private static final String EMAIL_REGEX = "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.(com|net|org|edu|gov|vn|co|io|edu\\.vn)$";
    private static final Pattern pattern = Pattern.compile(EMAIL_REGEX);

    public static boolean isValidEmail(String email) {
        if (email == null) {
            return false;
        }
        Matcher matcher = pattern.matcher(email);
        return matcher.matches();
    }

    public static void main(String[] args) {
        String[] testEmails = {
            "example@gmail.com",      // ✅ Hợp lệ
            "user@fpt.edu.vn",        // ✅ Hợp lệ
            "john.doe@company.co",    // ✅ Hợp lệ
            "support@mywebsite.io",   // ✅ Hợp lệ
            "fake@domain.com,m",       // ❌ Không hợp lệ (".comm" sai)
            "random@domain.xyzabc",   // ❌ Không hợp lệ
            "hello@site.abc",         // ❌ Không hợp lệ (".abc" không có trong danh sách)
            "@missinguser.com",       // ❌ Không hợp lệ (thiếu phần user)
            "invalid@.com",           // ❌ Không hợp lệ (domain sai)
            "user@domain"             // ❌ Không hợp lệ (thiếu phần mở rộng)
        };

        for (String email : testEmails) {
            System.out.println(email + " => " + (isValidEmail(email) ? "Hợp lệ" : "Không hợp lệ"));
        }
    }
}