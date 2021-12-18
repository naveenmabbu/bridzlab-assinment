function findTriplets(arr, n)
{
    var found = false;
 
    for (var i = 0; i < n - 1; i++)
    {
        
        var s = new Set();
        for (var j = i + 1; j < n; j++)
        {
            var x = -(arr[i] + arr[j]);
            if (s.has(x))
            {
                document.write( x + " " + arr[i] + " " + arr[j] + "<br>");
                found = true;
            }
            else
                s.add(arr[j]);
        }
    }
 
    if (found == false)
        document.write( " No Triplet Found" );
}
 

var arr = [0, -1, 2, -3, 1];
var n = arr.length;
findTriplets(arr, n);