/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utils;

/**
 *
 * @author alex
 */
public class isPrime {

    public static boolean isPrime(long n){
        if (n == 2 || n == 3) {
            return true;
        }

        if (n % 2 == 0 || n % 3 == 0) {
            return false;
        }

        int i = 5;
        int w = 2;

        while (i * i <= n) {
            if (n % i == 0) {
                return false;
            }

            i += w;
            w = 6 - w;
        }

        return true;
    }
}
