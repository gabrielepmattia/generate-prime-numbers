/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utils;

import java.math.BigInteger;

/**
 *
 * @author alex
 */
public class isPrime {

    public static boolean isPrime(BigInteger n){
        
        
        if (n.equals(BigInteger.valueOf(2)) || n.equals(BigInteger.valueOf(3))) {
            return true;
        }

        if (n.mod(BigInteger.valueOf(2)).equals(BigInteger.ZERO) || n.mod(BigInteger.valueOf(3)).equals(BigInteger.ZERO)) {
            return false;
        }

        int i = 5;
        int w = 2;
        
        while ( BigInteger.valueOf(i*i).compareTo(n) <= 0 ? true : false) {
            if (n.mod(BigInteger.valueOf(i)).equals(BigInteger.ZERO)) {
                return false;
            }

            i += w;
            w = 6 - w;
        }

        return true;
    }
}
